class AddFavoriteFoodToArtists < ActiveRecord::Migration[4.2]
  #You create a new file when you want to make changes. You NEVER
  #hard code or touch the previous file!
  def change
    add_column :artists, :favorite_food, :string
  end

end
