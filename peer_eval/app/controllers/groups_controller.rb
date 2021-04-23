class GroupsController < ApplicationController
  before_action :set_group, only: %i[ show edit update destroy ]

  # GET /groups or /groups.json
  def index
    @groups = Group.all
  end

  # GET /groups/1 or /groups/1.json
  def show
    @group = Group.find(params[:id])
    @students = @group.students
    @projects = @group.projects
  end

  # GET /groups/new
  def new
    @group = Group.new
  end

  # GET /groups/1/edit
  def edit
  end

  # POST /groups or /groups.json
  def create
    @group = Group.new(group_params)
    if params[:group][:student_ids] 
      params[:group][:student_ids].each { |student_id| 
        @group.students << Student.find(student_id)
      }
    end

    if params[:group][:project_ids] 
      params[:group][:project_ids].each { |project_id| 
        @group.projects << Project.find(project_id)
      }
    end

    respond_to do |format|
      if @group.save
        @groups = Group.all
        format.html { render action: "index", notice: "Group was successfully created." }
        format.json { render :show, status: :created, location: @group }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /groups/1 or /groups/1.json
  def update
    @group.students = []
    @group.projects = []
    if params[:group][:student_ids] 
      params[:group][:student_ids].each { |student_id| 
        @group.students << Student.find(student_id)
      }
    end

    if params[:group][:project_ids] 
      params[:group][:project_ids].each { |project_id| 
        @group.projects << Project.find(project_id)
      }
    end
    respond_to do |format|
      if @group.update(group_params)
        @groups = Group.all
        format.html { render action: "index", notice: "Group was successfully updated." }
        format.json { render :show, status: :ok, location: @group }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /groups/1 or /groups/1.json
  def destroy
    @group.destroy
    respond_to do |format|
      format.html { redirect_to groups_url, notice: "Group was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_group
      @group = Group.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def group_params
      params.require(:group).permit(:name)
    end
end
