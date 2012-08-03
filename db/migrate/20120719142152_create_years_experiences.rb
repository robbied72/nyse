class CreateYearsExperiences < ActiveRecord::Migration
  def change
    create_table :years_experiences do |t|
      t.string :title

      t.timestamps
    end
  end
end
