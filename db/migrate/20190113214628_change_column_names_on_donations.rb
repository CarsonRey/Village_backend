class ChangeColumnNamesOnDonations < ActiveRecord::Migration[5.2]
  def change
    rename_column :donations, :giver_id_id, :giver_id
    rename_column :donations, :receiver_id_id, :receiver_id
  end
end
