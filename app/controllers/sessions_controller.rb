class SessionsController < ActionController::Base
  layout 'login'
  def new
    @autenticar = Session.new
  end

  def create
    @autenticar = Session.new(set_params)
    if @autenticar.valid?
      session[:usuario_id] = @autenticar.id
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
