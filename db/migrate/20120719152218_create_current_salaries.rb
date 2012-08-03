class CreateCurrentSalaries < ActiveRecord::Migration
  def change
    create_table :current_salaries do |t|
      t.string :title

      t.timestamps
    end
  end
end
