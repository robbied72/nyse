class CreateJobtags < ActiveRecord::Migration
  def change
    create_table :jobtags do |t|
      t.string :title

      t.timestamps
    end
  end
end
