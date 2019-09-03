class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :validar_session

  def validar_session
    unless session[:usuario_id].present?
      redirect_to new_session_path
    end
  end
end
