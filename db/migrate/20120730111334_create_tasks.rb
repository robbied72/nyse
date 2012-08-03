class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :note
      t.datetime :due
      t.boolean :complete
      t.integer :company_admin_id
      t.integer :company_id

      t.timestamps
    end
  end
end
