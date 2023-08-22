class UnicornsController < ApplicationController
  def index
    @unicorns = Unicorn.all
  end

  # def new
  #   @unicorns = Unicorn.new
  # end

  def show
    @unicorn = Unicorn.find(params[:id])
  # TODO: improve logic to recommend more relevant unicorns
    @unicorns = Unicorn.first(3)
    @reservation = Reservation.new
  end


private

  def unicorn_params
    params.require(:unicorn_id).permit(:id, :gender, :age, :color, :price, :variety)
  end
end
