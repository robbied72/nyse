class CreateSiteInfos < ActiveRecord::Migration
  def change
    create_table :site_infos do |t|
      t.string :name
      t.string :address_line_1
      t.string :address_line_2
      t.string :city
      t.string :state
      t.string :zip
      t.string :telephone
      t.string :url
      t.string :email
      t.text :google_map_api
      t.text :meta_keywords
      t.text :meta_description

      t.timestamps
    end
  end
end
