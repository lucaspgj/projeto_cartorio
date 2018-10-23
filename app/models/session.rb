class Session
  include ActiveModel::Model
  attr_accessor :matricula, :password

  validate :autenticar
  validates :password, presence: true

  def autenticar
    @validar = Funcionario.where(matricula: self.matricula, senha: self.password).first
    if @validar.present?
      session[:usuario_id] = @validar.id
    else
     errors.add(:matricula, "Matrícula ou Senha não conferem.")
    end
  end
end
