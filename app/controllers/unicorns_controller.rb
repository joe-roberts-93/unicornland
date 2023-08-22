class UnicornsController < ApplicationController
  def index
    @unicorns = Unicorn.all
  end
end
