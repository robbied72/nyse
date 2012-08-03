class CreateVacancies < ActiveRecord::Migration
  def change
    create_table :vacancies do |t|
      t.string :title
      t.integer :sector_id
      t.string :location
      t.string :zipcode
      t.float :latitude
      t.float :longitude
      t.decimal :salary
      t.integer :job_type_id
      t.integer :company_id
      t.string :contact_name
      t.string :contact_email
      t.text :description
      t.boolean :active
      t.date :publish_date
      t.date :expiry_date

      t.timestamps
    end
  end
end
