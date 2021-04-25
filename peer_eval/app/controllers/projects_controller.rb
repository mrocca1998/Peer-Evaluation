class ProjectsController < ApplicationController
  before_action :set_project, only: %i[ show edit update destroy ]

  # GET /projects or /projects.json
  def index
    @projects = Project.all
    unless current_student.try(:isAdmin?)
      render(:file => File.join(Rails.root, 'public/403'), :formats => [:html], :status => 403, :layout => false)
    end
  end

  # GET /projects/1 or /projects/1.json
  def show
    @project = Project.find(params[:id])
    @groups = @project.groups
  end

  # GET /projects/new
  def new
    @project = Project.new
    @groups = Group.all
  end

  # GET /projects/1/edit
  def edit
    @project = Project.find(params[:id])
    @groups = Group.all
  end

  # POST /projects or /projects.json
  def create
    @project = Project.new(project_params)
    if params[:project][:group_ids] 
      params[:project][:group_ids].each { |group_id| 
        @project.groups << Group.find(group_id)
      }
    end

    respond_to do |format|
      if @project.save
        @projects = Project.all
        format.html { render action: "index", notice: "Project was successfully created." }
        format.json { render :show, status: :created, location: @project }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projects/1 or /projects/1.json
  def update
    @project.groups = []
    if params[:project][:group_ids] 
      params[:project][:group_ids].each { |group_id| 
        @project.groups << Group.find(group_id)
      }
    end
    respond_to do |format|
      if @project.update(project_params)
        @projects = Project.all
        format.html { render action: "index", notice: "Project was successfully updated." }
        format.json { render :show, status: :ok, location: @project }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projects/1 or /projects/1.json
  def destroy
    @project.destroy
    respond_to do |format|
      format.html { redirect_to projects_url, notice: "Project was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def project_params
      params.require(:project).permit(:title, :due)
    end
end
