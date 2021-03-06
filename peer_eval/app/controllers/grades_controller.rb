class GradesController < ApplicationController
  before_action :set_grade, only: %i[ show edit update destroy ]

  # GET /grades or /grades.json
  def index
    @grades = Grade.all
  end

  # GET /grades/1 or /grades/1.json
  def show
  end

  # GET /grades/new
  def new
    @grade = Grade.new
  end

  # GET /grades/1/edit
  def edit
  end

  # POST /grades or /grades.json
  def create
    @grade = Grade.new(grade_params)
    if @grade.save
      flash[:success] = "Grade was successfully created"
      redirect_to grades_path
    else
      flash[:errors] = @grade.errors.full_messages.join(' ')
      redirect_to grades_path
    end
  end

  # PATCH/PUT /grades/1 or /grades/1.json
  def update
    if @grade.save
      flash[:success] = "Grade was successfully updated"
      redirect_to grades_path
    else
      flash[:errors] = @grade.errors.full_messages.join(' ')
      redirect_to grades_path
    end
  end

  # DELETE /grades/1 or /grades/1.json
  def destroy
    @grade.destroy
    respond_to do |format|
      format.html { redirect_to grades_url, notice: "Grade was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grade
      @grade = Grade.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def grade_params
      params.require(:grade).permit(:project_id, :student_id, :projectGrade)
    end
end
