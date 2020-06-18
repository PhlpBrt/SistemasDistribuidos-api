class CreateEnderecos < ActiveRecord::Migration[6.0]
  def change
    create_table :enderecos do |t|
      t.string :rua
      t.string :numero

      t.timestamps
    end
  end
end
