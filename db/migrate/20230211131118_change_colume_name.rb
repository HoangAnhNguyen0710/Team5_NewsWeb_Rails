class ChangeColumeName < ActiveRecord::Migration[7.0]
  def change
    rename_column :articles, :thumnail, :thumbnail
  end
end
