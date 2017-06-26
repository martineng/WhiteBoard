class DashsubController < ApplicationController
  def index
    #@id = params[:id]
    @cSubject = Course.find(params[:cid])
    #@cSubjects = Subject.find(params[:cid])
    #.include(:subjects)
  end

end
