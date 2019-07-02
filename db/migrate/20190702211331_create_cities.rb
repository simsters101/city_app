class CreateCities < ActiveRecord::Migration[6.0]
  def change
    create_table :cities do |t|
      t.string :name
      t.integer :population
      t.string :state_or_province
      t.string :country
      t.string :description
      t.string :image_url

      t.timestamps
    end
  end
end
