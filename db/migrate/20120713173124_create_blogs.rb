class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :title
      t.integer :blog_cat_id
      t.string :teaser
      t.text :content
      t.boolean :active
      t.string :tags

      t.timestamps
    end
  end
end
