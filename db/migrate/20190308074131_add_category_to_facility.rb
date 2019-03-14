class AddCategoryToFacility < ActiveRecord::Migration[5.2]
  def change
    add_column :facility, :category, :string
  end
end
