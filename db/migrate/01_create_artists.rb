class CreateArtists < ActiveRecord::Migration[4.2]
  def up
  end

  def down
  end

  def change #creates an entire table with colums
    create_table :artists do |t| #deals with table
      t.string :name  #deals with columns
      t.string :genre  #deals with columns
      t.integer :age  #deals with columns
      t.string :hometown  #deals with columns
    end
  end
end
