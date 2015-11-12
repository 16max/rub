class AddFieldsToMovies < ActiveRecord::Migration
  def change
    add_column :movies, :release, :date
    add_column :movies, :description, :text
  end
end
