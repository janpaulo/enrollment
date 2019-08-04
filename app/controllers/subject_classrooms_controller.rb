class SubjectClassroomsController < ApplicationController
  before_action :set_subject_classroom, only: [:show, :edit, :update, :destroy]

  # GET /subject_classrooms
  # GET /subject_classrooms.json
  def index
    @subject_classrooms = SubjectClassroom.all
  end

  # GET /subject_classrooms/1
  # GET /subject_classrooms/1.json
  def show
  end

  # GET /subject_classrooms/new
  def new
    @subject_classroom = SubjectClassroom.new
  end

  # GET /subject_classrooms/1/edit
  def edit
  end

  # POST /subject_classrooms
  # POST /subject_classrooms.json
  def create
    @subject_classroom = SubjectClassroom.new(subject_classroom_params)

    respond_to do |format|
      if @subject_classroom.save
        format.html { redirect_to @subject_classroom, notice: 'Subject classroom was successfully created.' }
        format.json { render :show, status: :created, location: @subject_classroom }
      else
        format.html { render :new }
        format.json { render json: @subject_classroom.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subject_classrooms/1
  # PATCH/PUT /subject_classrooms/1.json
  def update
    respond_to do |format|
      if @subject_classroom.update(subject_classroom_params)
        format.html { redirect_to @subject_classroom, notice: 'Subject classroom was successfully updated.' }
        format.json { render :show, status: :ok, location: @subject_classroom }
      else
        format.html { render :edit }
        format.json { render json: @subject_classroom.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subject_classrooms/1
  # DELETE /subject_classrooms/1.json
  def destroy
    @subject_classroom.destroy
    respond_to do |format|
      format.html { redirect_to subject_classrooms_url, notice: 'Subject classroom was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subject_classroom
      @subject_classroom = SubjectClassroom.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subject_classroom_params
      params.require(:subject_classroom).permit(:classroom_id, :subject_id)
    end
end
