class ImovelMorador < ApplicationRecord
  belongs_to :imovel, required: false
  belongs_to :morador, required: false

  attr_accessor :cpf

  validates :cpf, :processo, presence: true

  before_save :vincular_morador

  def vincular_morador
      @morador = Morador.find_by(cpf: self.cpf)

     if @morador.present?
       self.morador_id = @morador.id
     else
       errors.add(:cpf, "Cpf inexistente.")
     end

  end

end
