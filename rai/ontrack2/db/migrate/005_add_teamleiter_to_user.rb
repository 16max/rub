class AddTeamleiterToUser < ActiveRecord::Migration
  def change
    add_column :users, :teamleiter, :boolean
  end
end
