class AddSocialToSiteInfos < ActiveRecord::Migration
  def change
    add_column :site_infos, :facebook, :string
    add_column :site_infos, :twitter, :string
    add_column :site_infos, :linkedin, :string
  end
end
