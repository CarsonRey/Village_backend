class CreateDonations < ActiveRecord::Migration[5.2]
  def change
    create_table :donations do |t|
        t.references :giver_id, references: :users
        t.references :receiver_id, references: :users
      t.timestamps
    end
  end
end
