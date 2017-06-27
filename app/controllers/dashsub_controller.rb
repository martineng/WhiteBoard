class DashsubController < ApplicationController

  # this controller handle nothing more than receiving
  # the value of course id the user selected in DashboardController
  # and generate the subjects in associate with the selected course
  # in a new page//view

  def index
    begin #error hanlding
      @cSubject = Course.find(params[:cid])
    rescue Exception => errMsg # interrogate a rescured exception
      puts errMsg #print error message
    end#end rescue
  end #end index

end
