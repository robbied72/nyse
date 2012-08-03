class AddImageToCompanies < ActiveRecord::Migration
  def change
    add_column :companies, :image_file_name, :string
    add_column :companies, :image_content_type, :string
    add_column :companies, :image_file_size, :integer
    add_column :companies, :image_updated_at, :datetime
  end
end
