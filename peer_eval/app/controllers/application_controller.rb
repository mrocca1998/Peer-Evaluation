class ApplicationController < ActionController::Base
  before_action :authenticate_student!


  def after_sign_in_path_for(resource)
    if current_student.try(:isAdmin?)
      return "/students"
    else
      return "/peer_evaluations"
    end
  end
end
