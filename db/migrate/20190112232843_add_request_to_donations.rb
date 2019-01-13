class AddRequestToDonations < ActiveRecord::Migration[5.2]
  def change
    add_reference :donations, :request, foreign_key: true
  end
end
