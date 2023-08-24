class ReservationsController < ApplicationController
  before_action :set_unicorn, only: %i[create]

  def index
    @my_unicorns = current_user.unicorns
    @reservations = []
    @my_unicorns.each do |unicorn|
      @reservations << unicorn.reservations.to_a
    end
    @reservations.flatten!
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.unicorn = @unicorn
    @reservation.user = current_user
    if @reservation.save
      redirect_to my_reservations_path
    else
      @unicorns = Unicorn.first(3)
      render "unicorns/show", status: :unprocessable_entity
    end
  end

  def user_reservations
    @reservations = current_user.reservations
  end

  def accept
    @reservation = Reservation.find(params[:id])
    @reservation.update(approved: true)
    redirect_to reservations_path
  end

  def decline
    @reservation = Reservation.find(params[:id])
    @reservation.update(approved: false)
    redirect_to reservations_path
  end

  private

  def set_unicorn
    @unicorn = Unicorn.find(params[:unicorn_id])
  end

  def reservation_params
    params.require(:reservation).permit(:date, :approved, :user_id)
  end
end
