class CreateDeliveries < ActiveRecord::Migration[5.2]
  def change
    create_table :deliveries do |t|
      t.references :giver_id, references: :users
      t.references :deliverer_id, references: :users
      t.references :receiver_id, references: :users
      t.string :start_location
      t.string :end_location
      t.datetime :pick_up
      t.datetime :drop_off
      t.boolean :delivered, default: false
      t.timestamps
    end
  end
end
