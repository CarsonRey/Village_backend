class ChangeColumnNamesOnDeliveries < ActiveRecord::Migration[5.2]

  def change
    rename_column :deliveries, :giver_id_id, :giver_id
    rename_column :deliveries, :receiver_id_id, :receiver_id
    rename_column :deliveries, :deliverer_id_id, :deliverer_id
  end
  
end
