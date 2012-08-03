class AddExperienceToUsers < ActiveRecord::Migration
  def change
    add_column :users, :yeras_ecperience_id, :integer
  end
end
