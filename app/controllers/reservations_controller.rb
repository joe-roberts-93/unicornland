class ReservationsController < ApplicationController
  before_action :set_reservation, only: %i[new create]

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.unicorn = @reservation
    if @reservation.save
      redirect_to reservations_path(@reservation)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def reservation_params
    params.require(:reservation).permit(:date, :approved, :user_id, :unicorn_id)
  end

end
