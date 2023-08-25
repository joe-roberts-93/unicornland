class UnicornsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @unicorns = Unicorn.all
    @unicorns = @unicorns.search_by_name(params[:name]) if params[:name].present?
    @unicorns = @unicorns.search_by_gender(params[:gender]) if params[:gender].present?
    @unicorns = @unicorns.search_by_age(params[:age]) if params[:age].present?
    @unicorns = @unicorns.search_by_color(params[:color]) if params[:color].present?
    @unicorns = @unicorns.search_by_price(params[:price]) if params[:price].present?
    @unicorns = @unicorns.search_by_variety(params[:variety]) if params[:variety].present?
  end

  def new
    @unicorn = Unicorn.new
  end

  def create
    @unicorn = Unicorn.new(unicorn_params)
    @unicorn.user = current_user
    if @unicorn.save
      current_user.update(owner: true)
      redirect_to my_listings_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @unicorn = Unicorn.find(params[:id])
    # TODO: improve logic to recommend more relevant unicorns
    similar_unicorns = Unicorn.where(variety: @unicorn.variety).where.not(id: @unicorn.id)
    similar_price_unicorns = Unicorn.where(price: @unicorn.price).where.not(id: @unicorn.id)
    similar_color_unicorns = Unicorn.where(color: @unicorn.color).where.not(id: @unicorn.id)
    suggested_unicorns = []
    suggested_unicorns << similar_unicorns
    suggested_unicorns << similar_price_unicorns
    suggested_unicorns << similar_color_unicorns
    @unicorns = suggested_unicorns.flatten
    @reservation = Reservation.new
  end

  def owner_listings
    @unicorns = current_user.unicorns
  end

  private

  def unicorn_params
    params.require(:unicorn).permit(:name, :gender, :age, :color, :price, :variety, :photo)
  end
end
