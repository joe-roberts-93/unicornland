class UnicornsController < ApplicationController
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
      redirect_to unicorn_path(@unicorn)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @unicorn = Unicorn.find(params[:id])
  # TODO: improve logic to recommend more relevant unicorns
    @unicorns = Unicorn.first(3)
  end



private

  def unicorn_params
    params.require(:unicorn).permit(:name, :gender, :age, :color, :price, :variety)
  end
end
