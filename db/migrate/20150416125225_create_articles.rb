class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :name
      t.text :content
      t.string :author_name
      t.integer :blog_id

      t.timestamps null: false
    end
  end
end
