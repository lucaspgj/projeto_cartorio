class CreateImovelMoradors < ActiveRecord::Migration[5.1]
  def change
    create_table :imovel_moradors do |t|
      t.integer :morador_id
      t.integer :imovel_id
      t.integer :funcionario_id
      t.integer :processo

      t.timestamps
    end
  end
end
