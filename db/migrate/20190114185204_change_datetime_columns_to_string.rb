class ChangeDatetimeColumnsToString < ActiveRecord::Migration[5.2]
  def change
    change_column :food_items, :date_made, :string
    change_column :food_items, :expiration_date, :string
  end
end
