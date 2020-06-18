class CreateLivros < ActiveRecord::Migration[6.0]
  def change
    create_table :livros do |t|
      t.string :exemplar
      t.date :ano
      t.string :disponibilidade

      t.timestamps
    end
  end
end
