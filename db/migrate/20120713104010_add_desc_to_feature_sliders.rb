class AddDescToFeatureSliders < ActiveRecord::Migration
  def change
    add_column :feature_sliders, :description, :text
  end
end
