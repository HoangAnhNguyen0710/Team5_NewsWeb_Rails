class ChangeIdToStringInCategories < ActiveRecord::Migration[7.0]
  def change
    change_column :categories, :id, :string
  end
end
