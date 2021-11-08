class CreateRestaurants < ActiveRecord::Migration[6.1]
  def change
    create_table :restaurants do |t|
      t.references :location, null: false, foreign_key: true
      t.string :name
      t.string :cuisine
      t.string :website
      t.string :phone_number
      t.string :address

      t.timestamps
    end
  end
end
