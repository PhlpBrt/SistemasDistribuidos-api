class CreateAutors < ActiveRecord::Migration[6.0]
  def change
    create_table :autors do |t|
      t.string :nome
      t.date :aniversario

      t.timestamps
    end
  end
end
