class Funcionario < ApplicationRecord
  validates :nome, :matricula, presence: true
end
