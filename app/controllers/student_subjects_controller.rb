class StudentSubjectsController < ApplicationController
  before_action :set_student_subject, only: [:show, :edit, :update, :destroy]

  # GET /student_subjects
  # GET /student_subjects.json
  def index
    @student_subjects = StudentSubject.all
  end

  # GET /student_subjects/1
  # GET /student_subjects/1.json
  def show
  end

  # GET /student_subjects/new
  def new
    @subject = Subject.all
    @student = Student.all
    @student_subject = StudentSubject.new
  end

  # GET /student_subjects/1/edit
  def edit
    @subject = Subject.all
    @student = Student.all
  end

  # POST /student_subjects
  # POST /student_subjects.json
  def create
    @student_subject = StudentSubject.new(student_subject_params)

    respond_to do |format|
      if @student_subject.save
        format.html { redirect_to @student_subject, notice: 'Student subject was successfully created.' }
        format.json { render :show, status: :created, location: @student_subject }
      else
        format.html { render :new }
        format.json { render json: @student_subject.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /student_subjects/1
  # PATCH/PUT /student_subjects/1.json
  def update
    respond_to do |format|
      if @student_subject.update(student_subject_params)
        format.html { redirect_to @student_subject, notice: 'Student subject was successfully updated.' }
        format.json { render :show, status: :ok, location: @student_subject }
      else
        format.html { render :edit }
        format.json { render json: @student_subject.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /student_subjects/1
  # DELETE /student_subjects/1.json
  def destroy
    @student_subject.destroy
    respond_to do |format|
      format.html { redirect_to student_subjects_url, notice: 'Student subject was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student_subject
      @student_subject = StudentSubject.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_subject_params
      params.require(:student_subject).permit(:student_id, :subject_id, :firts_sem, :second_sem, :trird_sem, :fourth_sem,:avatar)
    end
end
