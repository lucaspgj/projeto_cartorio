class Imovel < ApplicationRecord
    has_many :imovel_moradors, class_name: 'ImovelMorador'
end
