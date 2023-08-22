class ReservationsController < ApplicationController
  before_action :set_unicorn, only: %i[create]

  def index
    @reservations = current_user.reservations
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.unicorn = @unicorn
    @reservation.user = current_user
    if @reservation.save
      redirect_to my_reservations_path
    else
      render :show, status: :unprocessable_entity
    end
  end

  def user_reservations
    @reservations = current_user.reservations
  end

  def approve_reservation
  end

  def disapprove_reservation
  end

  private

  def set_unicorn
    @unicorn = Unicorn.find(params[:unicorn_id])
  end

  def reservation_params
    params.require(:reservation).permit(:date, :approved, :user_id)
  end
end
