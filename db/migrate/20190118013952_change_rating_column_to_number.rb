class ChangeRatingColumnToNumber < ActiveRecord::Migration[5.2]
  def change
    rename_column :ratings, :rating, :number
  end
end
