class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :vorname
      t.string :nachname
      t.string :username
      t.references :project, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
