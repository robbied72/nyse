class AddImageToFeatureSliders < ActiveRecord::Migration
  def change
    add_column :feature_sliders, :image_file_name, :string
    add_column :feature_sliders, :image_content_type, :string
    add_column :feature_sliders, :image_file_size, :integer
    add_column :feature_sliders, :image_updated_at, :datetime
  end
end
