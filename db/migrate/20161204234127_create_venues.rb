class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :website
      t.integer :capacity
      t.string :description
      t.string :drink_1
      t.string :drink_2
      t.string :drink_3
      t.string :drink_4
      t.string :drink_5
      t.string :food_1
      t.string :food_2
      t.string :food_3
      t.string :food_4
      t.string :food_5
      t.integer :drink_1_price
      t.integer :drink_2_price
      t.integer :drink_3_price
      t.integer :drink_4_price
      t.integer :drink_5_price
      t.integer :food_1_price
      t.integer :food_2_price
      t.integer :food_3_price
      t.integer :food_4_price
      t.integer :food_5_price
      t.string :amenity_1
      t.string :amenity_2
      t.string :amenity_3
      t.string :amenity_4
      t.string :amenity_5
      t.string :amenity_6
      t.string :amenity_7
      t.string :amenity_8
      t.string :rule_1
      t.string :rule_2
      t.string :rule_3
      t.string :rule_4
      t.string :rule_5
      t.string :rule_6
      t.integer :coordinator_id
      t.string :title

      t.timestamps

    end
  end
end
