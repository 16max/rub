class AddLinkToFilms < ActiveRecord::Migration
  def change
    add_column :films, :video_link, :string
  end
end
