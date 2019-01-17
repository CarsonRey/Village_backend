class AddRatingBooleansToDelivery < ActiveRecord::Migration[5.2]
  def change
    add_column :deliveries, :giver_has_rated, :boolean, :default => 0
    add_column :deliveries, :receiver_has_rated, :boolean, :default => 0
  end
end
