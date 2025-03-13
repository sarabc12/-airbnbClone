class RemoveStatusFromFlats < ActiveRecord::Migration[7.1]
  def change
    remove_column :flats, :status
  end
end
