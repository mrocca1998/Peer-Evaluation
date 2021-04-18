class StudentsController < ApplicationController
  before_action :set_student, only: %i[ show edit update destroy ]

  # GET /students or /students.json
  def index
    @students = Student.all.sort_by(&:lname)
  end

  # GET /students/1 or /students/1.json
  def show
    @student = Student.find(params[:id])
    @groups = @student.groups
  end

  # GET /students/new
  def new
    @student = Student.new
    @groups = Group.all
    #assuming @user is your User record
  end

  # GET /students/1/edit
  def edit
    @student = Student.find(params[:id])
    @groups = Group.all
  end

  # POST /students or /students.json
  def create
    @student = Student.new(student_params)
    @student.password = "default"
    if params[:student][:group_ids] 
      params[:student][:group_ids].each { |group_id| 
        @student.groups << Group.find(group_id)
      }
    end

    respond_to do |format|
      if @student.save
        format.html { redirect_to @student, notice: "Student was successfully created." }
        format.json { render :show, status: :created, location: @student }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /students/1 or /students/1.json
  def update
    @student.groups = []
    if params[:student][:group_ids] 
      params[:student][:group_ids].each { |group_id| 
        @student.groups << Group.find(group_id)
      }
    end

    respond_to do |format|
      if @student.update(student_params)
        format.html { redirect_to @student, notice: "Student was successfully updated." }
        format.json { render :show, status: :ok, location: @student }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /students/1 or /students/1.json
  def destroy
    @student.destroy
    respond_to do |format|
      format.html { redirect_to students_url, notice: "Student was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student
      @student = Student.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def student_params
      params.require(:student).permit(:fname, :lname, :email, :password, :isAdmin)
    end
end
