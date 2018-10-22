class CreateMoradors < ActiveRecord::Migration[5.1]
  def change
    create_table :moradors do |t|
      t.string  :nome
      t.string  :cpf
      t.string  :rg
      t.string  :est_civil
      t.string  :profissao
      t.string  :nome_conjuge
      t.string  :cpf_conjuge
      t.string  :profissao_conjuge
      t.string  :est_civil_conjuge

      t.timestamps
    end
  end
end
