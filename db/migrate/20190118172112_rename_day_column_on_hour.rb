class RenameDayColumnOnHour < ActiveRecord::Migration[5.2]
  def change
    remove_column :hours, :day
    add_reference :hours, :day
  end
end
