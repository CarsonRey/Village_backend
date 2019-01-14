class AddDeliveryIdToDonations < ActiveRecord::Migration[5.2]
  def change
    add_reference :donations, :delivery, foreign_key: true
  end
end
