class ChangeIdToIntegerInArticles < ActiveRecord::Migration[7.0]
  def change
    change_column :articles, :id, :integer
  end
end
