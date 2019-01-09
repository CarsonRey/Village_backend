class CreateFoodItemDonations < ActiveRecord::Migration[5.2]
  def change
    create_table :food_item_donations do |t|
      t.references :food_item, foreign_key: :true
      t.references :donation, foreign_key: :true
      t.timestamps
    end
  end
end
