class CreateCalPriorities < ActiveRecord::Migration
  def change
    create_table :cal_priorities do |t|
      t.string :name

      t.timestamps
    end
  end
end
