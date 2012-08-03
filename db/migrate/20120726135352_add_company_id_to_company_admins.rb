class AddCompanyIdToCompanyAdmins < ActiveRecord::Migration
  def change
    add_column :company_admins, :company_id, :integer
  end
end
