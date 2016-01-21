class CreateSsps < ActiveRecord::Migration
  def change
    create_table :ssps do |t|
      t.string :pick
      t.string :result

      t.timestamps null: false
    end
  end
end
