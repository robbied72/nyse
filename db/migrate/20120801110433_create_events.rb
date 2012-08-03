class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.text :note
      t.date :due
      t.integer :cal_priority_id
      t.integer :company_id
      t.integer :company_admin_id

      t.timestamps
    end
  end
end
