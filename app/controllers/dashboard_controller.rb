class DashboardController < ApplicationController
  before_action :authenticate_user!, only: [:home]

  def index
  end

  def show
  end

end
