class CreateFacilities < ActiveRecord::Migration[5.2]
  def change
    create_table :facilities do |t|
      t.string :name
      t.string :type
      t.string :description
      t.string :url

      t.timestamps
    end
  end
end
