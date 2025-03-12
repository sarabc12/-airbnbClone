class AddStatusToFlats < ActiveRecord::Migration[7.1]
  def change
    add_column :flats, :status, :boolean
  end
end
