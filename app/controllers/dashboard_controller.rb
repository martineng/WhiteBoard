class DashboardController < ApplicationController
  before_action :authenticate_user!, only: [:index, :subs]
  
  # this controller handle nothing more than generate current_user.courses

  def index
  end

end
