class ReservationsController < ApplicationController
  before_action :set_unicorn, only: %i[create]

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.unicorn = @unicorn
    @reservation.user = current_user
    if @reservation.save
      redirect_to reservation_path(@reservation)
    else
      render :show, status: :unprocessable_entity
    end
  end

  private

  def set_unicorn
    @unicorn = Unicorn.find(params[:unicorn_id])
  end

  def reservation_params
    params.require(:reservation).permit(:date, :approved, :user_id)
  end
end
