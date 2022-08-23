class DucksController < ApplicationController
  def index
    @ducks = Duck.all
  end

  def show
    @duck = Duck.find(params[:id])
  end

  def new
    @duck = Duck.new
  end

  def create
    @duck = Duck.new(duck_pramas)
  end

  private

  def duck_pramas
    params.require(:duck).permit(:category, :description)
  end
end
