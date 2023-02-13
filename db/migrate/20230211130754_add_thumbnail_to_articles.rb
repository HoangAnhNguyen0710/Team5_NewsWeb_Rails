class AddThumbnailToArticles < ActiveRecord::Migration[7.0]
  def up
    add_attachment :articles, :thumbnail
  end

  def down
    remove_attachment :articles, :thumbnail
  end
end
