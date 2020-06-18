class CreateGeneros < ActiveRecord::Migration[6.0]
  def change
    create_table :generos do |t|
      t.string :nome
      t.string :recomendacao

      t.timestamps
    end
  end
end
