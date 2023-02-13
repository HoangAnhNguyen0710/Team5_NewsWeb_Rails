class ChangeIdToStringInArticles < ActiveRecord::Migration[7.0]
  def change
    change_column :articles, :id, :string
  end
end
