class ImovelMorador < ApplicationRecord
  belongs_to :imovel
  belongs_to :morador

  attr_accessor :cpf

end
