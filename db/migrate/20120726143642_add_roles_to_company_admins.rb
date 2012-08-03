class AddRolesToCompanyAdmins < ActiveRecord::Migration
  def change
    add_column :company_admins, :role_id, :integer
    add_column :company_admins, :first_name, :string
    add_column :company_admins, :last_name, :string
    add_column :company_admins, :position, :string
  end
end
