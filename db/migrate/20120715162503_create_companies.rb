class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :addrress_line_1
      t.string :address_line_2
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :logo
      t.string :url
      t.string :email
      t.string :contact_number

      t.timestamps
    end
  end
end
