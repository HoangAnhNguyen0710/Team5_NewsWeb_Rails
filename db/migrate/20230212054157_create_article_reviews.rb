class CreateArticleReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :article_reviews do |t|
      t.integer :user_id
      t.integer :article_id
      t.text :review

      t.timestamps
    end
  end
end
