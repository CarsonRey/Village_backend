class ChangePickUpAndDropOffDatatypes < ActiveRecord::Migration[5.2]
  def change
    change_column :deliveries, :pick_up, :string
    change_column :deliveries, :drop_off, :string
  end
end
