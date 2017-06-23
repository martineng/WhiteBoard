class DashboardController < ApplicationController
  before_action :authenticate_user!, only: [:index, :subs]

  def index
  end

  def subs
  end

end
