class CreateFeatureSliders < ActiveRecord::Migration
  def change
    create_table :feature_sliders do |t|
      t.string :title
      t.string :image
      t.boolean :active

      t.timestamps
    end
  end
end
