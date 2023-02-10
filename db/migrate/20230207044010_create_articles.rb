class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.integer :category_id
      t.string :content
      t.integer :user_id
      t.boolean :display

      t.timestamps
    end
  end
end
