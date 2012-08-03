class AddWorkInStatesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :work_in_usa, :boolean
  end
end
