class PeerEvaluationsController < ApplicationController

  # GET /peer_evaluations or /peer_evaluations.json
  def index
    @memberships = Membership.all
    @students = Student.all
    @groups = Group.all
    @assignments = Assignment.all
    @projects = Project.all
    @reviews = Review.all
    @scores = Score.all
    params.permit!
    @review = Review.new(params[:review])
    @score = Score.new(params[:score])

  end

end
