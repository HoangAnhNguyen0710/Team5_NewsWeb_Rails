class ChangeArticleIdToStringInComments < ActiveRecord::Migration[7.0]
  def change
    change_column :comments, :article_id, :string
  end
end
