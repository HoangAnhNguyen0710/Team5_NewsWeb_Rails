class ChangeIdToIntegerInComments < ActiveRecord::Migration[7.0]
  def change
    change_column :comments, :id, :integer
  end
end
