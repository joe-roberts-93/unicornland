class UnicornsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @unicorns = Unicorn.all
  end

  def new
    @unicorn = Unicorn.new
  end

  def create
    @unicorn = Unicorn.new(unicorn_params)
    @unicorn.user = current_user
    if @unicorn.save
      current_user.update(owner: true)
      redirect_to unicorn_path(@unicorn)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @unicorn = Unicorn.find(params[:id])
    # TODO: improve logic to recommend more relevant unicorns
    @unicorns = Unicorn.first(3)
    @reservation = Reservation.new
  end

  private

  def unicorn_params
    params.require(:unicorn).permit(:name, :gender, :age, :color, :price, :variety, :photo)
  end
end
