class ChangeCategoryIdTypeToStringInArticles < ActiveRecord::Migration[7.0]
  def change
    change_column :articles, :category_id, :string
  end
end
