class CreateClientes < ActiveRecord::Migration[6.0]
  def change
    create_table :clientes do |t|
      t.string :nome
      t.date :idade
      t.string :sexo

      t.timestamps
    end
  end
end
