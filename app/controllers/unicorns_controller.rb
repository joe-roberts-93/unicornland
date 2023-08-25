class UnicornsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @unicorns = Unicorn.all
    # @unicorns = Unicorn.search_by_name(params[:query]) if params[:query].present?
    @unicorns = Unicorn.search_by_name(params[:gender])
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

  def edit
    @unicorn = Unicorn.find(params[:id])
  end

  def update
    @unicorn = Unicorn.find(params[:id])
      if @unicorn.update(unicorn_params)
        redirect_to my_listings_path
      else
        render :edit, status: :unprocessable_entity
      end
  end

  def show
    @unicorn = Unicorn.find(params[:id])
    # TODO: improve logic to recommend more relevant unicorns
    @unicorns = Unicorn.first(3)
    @reservation = Reservation.new
  end

  def owner_listings
    @unicorns = current_user.unicorns
  end

  def destroy
    @unicorn = Unicorn.find(params[:id])
    @unicorn.destroy
    redirect_to my_listings_path
  end

  private

  def unicorn_params
    params.require(:unicorn).permit(:name, :gender, :age, :color, :price, :variety, :photo)
  end
end
