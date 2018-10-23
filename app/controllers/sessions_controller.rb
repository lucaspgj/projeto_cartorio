require_dependency 'application_controller'

class SessionsController < ApplicationController
  layout 'login'
  def new
    @autenticar = Session.new
  end

  def create
    @autenticar = Session.new(set_params)
    if @autenticar.valid?
      redirect_to funcionarios_path
    else
      render action: :new
    end
  end

  private

  def set_params
    params.require(:session).permit(:matricula, :password)
  end

end
