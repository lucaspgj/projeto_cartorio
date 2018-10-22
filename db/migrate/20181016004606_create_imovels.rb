class CreateImovels < ActiveRecord::Migration[5.1]
  def change
    create_table :imovels do |t|
      t.string :iptu
      t.string :area
      t.string :endereco
      t.integer :matricula
      t.string :cidade
      t.string :ato_declaratorio

      t.timestamps
    end
  end
end
