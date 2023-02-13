class ChangeArticleIdToIntegerInComments < ActiveRecord::Migration[7.0]
  def change
    change_column :comments, :article_id, :integer
  end
end
