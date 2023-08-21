class UnicornsController < ApplicationController
  def index
    @unicorns = Unicorn.all
  end

  def new
    @unicorns = Unicorn.new
  end

#   def create
#     @unicorn = unicorn.new(unicorn_params)
#     if @unicorn.save
#       redirect_to unicorn_path(@unicorn)
#     else
#       render :new, status: :unprocessable_entity
#     end
#   end

#   private

#   def unicorn_params
#     params.require(:unicorn).permit()
#   end
# end

end
