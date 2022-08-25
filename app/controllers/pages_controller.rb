class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]
  def home
  end

  def my_ducks
    @my_ducks = current_user.ducks
  end
end
