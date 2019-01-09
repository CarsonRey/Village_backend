class CreateUserHours < ActiveRecord::Migration[5.2]
  def change
    create_table :user_hours do |t|
      t.references :user, foreign_key: true
      t.references :hour, foreign_key: true
      t.timestamps
    end
  end
end
