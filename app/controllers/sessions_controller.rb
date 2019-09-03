class SessionsController < ActionController::Base
  layout 'login'
  def new
    @autenticar = Session.new
  end

  def create
    @autentica = Session.new(set_params)
    if @autentica.valid?
      session[:usuario_id] = @autentica.id
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
