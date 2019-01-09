class CreateRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :requests do |t|
      t.references :user, foreign_key: true
      t.integer :mouths_to_feed
      t.timestamps
    end
  end
end
