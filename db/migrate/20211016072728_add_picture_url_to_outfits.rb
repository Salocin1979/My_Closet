class AddPictureUrlToOutfits < ActiveRecord::Migration[6.0]
  def change
    add_column :outfits, :picture_url, :string
  end
end
