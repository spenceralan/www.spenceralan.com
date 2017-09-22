class HomeController < ApplicationController
  skip_before_action :authenticate_admin!, only: [:show]

  def show
  end
end