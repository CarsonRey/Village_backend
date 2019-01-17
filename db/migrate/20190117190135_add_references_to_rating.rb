class AddReferencesToRating < ActiveRecord::Migration[5.2]
  def change
    remove_column :ratings, :user_id
    add_reference :ratings, :giver, references: :users
    add_reference :ratings, :deliverer, references: :users
    add_reference :ratings, :receiver, references: :users
    add_reference :ratings, :delivery
  end
end
