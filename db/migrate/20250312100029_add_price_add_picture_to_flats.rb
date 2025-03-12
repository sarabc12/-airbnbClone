class AddPriceAddPictureToFlats < ActiveRecord::Migration[7.1]
  def change
    add_column :flats, :price, :integer
    add_column :flats, :picture, :string
  end
end
