class AddSlugToVacancies < ActiveRecord::Migration
  def change
    add_column :vacancies, :slug, :string
  end
end
