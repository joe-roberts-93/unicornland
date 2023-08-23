class PagesController < ApplicationController
  def home
    @unicorns = Unicorn.all
  end
end
