class AddHitsToVacancies < ActiveRecord::Migration
  def change
    add_column :vacancies, :hits, :integer
  end
end
