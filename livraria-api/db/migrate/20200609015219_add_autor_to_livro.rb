class AddAutorToLivro < ActiveRecord::Migration[6.0]
  def change
    add_reference :livros, :autor, null: false, foreign_key: true
  end
end
