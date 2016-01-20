class AddFieldsToEvents < ActiveRecord::Migration
  def change
    add_column :events, :start_at, :datetime
    add_column :events, :desciption, :text
  end
end
