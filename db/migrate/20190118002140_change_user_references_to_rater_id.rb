class ChangeUserReferencesToRaterId < ActiveRecord::Migration[5.2]
  def change
    remove_column :ratings, :giver_id
    remove_column :ratings, :receiver_id
    add_reference :ratings, :rater, references: :users
  end
end
