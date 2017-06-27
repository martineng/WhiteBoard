class SubjectsController < ApplicationController
  before_action :set_subject, only: [:show, :edit, :update, :destroy]

  # This controller is the normal scaffold of subjects.
  # no additional method added except error handling

  # GET /subjects
  # GET /subjects.json
  def index #print all subjects
    begin # error handling
      @subjects = Subject.includes(:course).all #bug fixed using Bullet gem
    rescue Exception => errMsg # interrogate a rescured exception
      puts errMsg #output error message
    end #end error handling
  end

  # GET /subjects/1
  # GET /subjects/1.json
  def show #print single subject on url
  end

  # GET /subjects/new
  def new #create new subject on url
    begin #err handling
      @subject = Subject.new
    rescue Exception => err # interrogate a rescured exception
      puts err #print err message
    end #end err handling
  end # end new

  # GET /subjects/1/edit
  def edit # edit single subject on url
  end

  # POST /subjects
  # POST /subjects.json
  def create #query to create subject
    begin #err handle
      @subject = Subject.new(subject_params)

      respond_to do |format|
        if @subject.save
          format.html { redirect_to @subject, notice: 'Subject was successfully created.' }
          format.json { render :show, status: :created, location: @subject }
        else
          format.html { render :new }
          format.json { render json: @subject.errors, status: :unprocessable_entity }
        end #end if
      end #end do
    rescue Exception => errMsg # interrogate a rescured exception
      puts errMsg #print system  err message
    end #end err handle

  end

  # PATCH/PUT /subjects/1
  # PATCH/PUT /subjects/1.json
  def update #query to update subject
    begin #err handle
      respond_to do |format|
        if @subject.update(subject_params)
          format.html { redirect_to @subject, notice: 'Subject was successfully updated.' }
          format.json { render :show, status: :ok, location: @subject }
        else
          format.html { render :edit }
          format.json { render json: @subject.errors, status: :unprocessable_entity }
        end #end if
      end # end do
    rescue Exception => errMsg # interrogate a rescured exception
      puts errMsg #print err message
    end #end err handle
  end

  # DELETE /subjects/1
  # DELETE /subjects/1.json
  def destroy #simply destroy single subject
    begin #handle err
      @subject.destroy
      respond_to do |format|
        format.html { redirect_to subjects_url, notice: 'Subject was successfully destroyed.' }
        format.json { head :no_content }
      end
    rescue Exception => errMsg # interrogate a rescured exception
      puts errMsg #print err message
    end #END err handle
  end #end destroy 

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subject
      @subject = Subject.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subject_params
      params.require(:subject).permit(:subject_name, :subject_code, :description, :course_id)
    end
end
