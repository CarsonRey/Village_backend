class AddColumnToRequest < ActiveRecord::Migration[5.2]
  def change
    add_column :requests, :taken, :boolean, :default => 0
  end
end
