class CreateImovelMoradors < ActiveRecord::Migration[5.1]
  def change
    create_table :imovel_moradores do |t|
      t.integer :id_morador
      t.integer :id_imovel
      t.integer :id_funcionario
      t.integer :processo

      t.timestamps
    end
  end
end
