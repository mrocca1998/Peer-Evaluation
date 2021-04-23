class ApplicationController < ActionController::Base
  before_action :authenticate_student!

  #before_action :authorize, :except => [:new, :create]


  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:fname, :lname, :email, :password, :isAdmin)}

    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:fname, :lname, :email, :isAdmin, :password, :current_password)}
  end


  def after_sign_in_path_for(resource)
    current_student.count = current_student.count + 1
    current_student.save
    if current_student.count == 1
      edit_student_registration_path(current_student)
    elsif current_student.try(:isAdmin?)
      return "/students"
    else
      return "/peer_evaluations"
    end
  end
end
