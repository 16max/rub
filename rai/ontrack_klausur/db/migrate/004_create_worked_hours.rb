class CreateWorkedHours < ActiveRecord::Migration
  def change
    create_table :worked_hours do |t|
      t.references :project, index: true, foreign_key: true
      t.references :employee, index: true, foreign_key: true
      t.integer :hours

      t.timestamps null: false
    end
  end
end
