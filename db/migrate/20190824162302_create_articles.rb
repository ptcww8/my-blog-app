class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :description
      t.integer :category_id
      t.integer :user_id
      t.string :image

      t.timestamps
    end
  end
end
