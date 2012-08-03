class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :menu
      t.string :title
      t.string :parent_id
      t.string :teasertext
      t.text :content
      t.date :publish
      t.date :expire
      t.boolean :active
      t.string :slug

      t.timestamps
    end
  end
end
