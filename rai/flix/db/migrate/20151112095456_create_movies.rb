class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :titel
      t.string :rating
      t.decimal :total_gross

      t.timestamps null: false
    end
  end
end
