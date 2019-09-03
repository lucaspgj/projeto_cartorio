class Session
  include ActiveModel::Model
  attr_accessor :matricula, :password, :id

  validate :autenticar
  validates :password, presence: true

  def autenticar
    @validar = Funcionario.where(matricula: self.matricula, senha: self.password).first
    if @validar.present?
      self.id = @validar.id
    else
     errors.add(:matricula, "Matrícula ou Senha não conferem.")
    end
  end
end
