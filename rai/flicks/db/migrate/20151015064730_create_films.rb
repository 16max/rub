class CreateFilms < ActiveRecord::Migration
  def change
    create_table :films do |t|
      t.string :titel
      t.integer :rank

      t.timestamps null: false
    end
  end
end
