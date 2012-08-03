class CreateBlogCats < ActiveRecord::Migration
  def change
    create_table :blog_cats do |t|
      t.string :title

      t.timestamps
    end
  end
end
