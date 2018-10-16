class CreateFuncinarios < ActiveRecord::Migration[5.1]
  def change
    create_table :funcionarios do |t|
      t.string :nome
      t.string :senha
      t.string :matricula
      t.string :cargo

      t.timestamps
    end
  end
end
