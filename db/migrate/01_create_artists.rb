ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "db/artists.sqlite"
)

# Create our database
sql = <<-SQL
  CREATE TABLE IF NOT EXISTS artists (
  id INTEGER PRIMARY KEY,
  name TEXT,
  genre TEXT,
  age INTEGER,
  hometown TEXT
  )
SQL

ActiveRecord::Base.connection.execute(sql)

class CreateArtists < ActiveRecord::Migration[4.2]
  # define the code to execute when the migration is run = "do"
  def up
  end

  # define the code to execute when the migration is rolled back  = "undo"
  def down
  end

  def change
    create_table :artists do |t|
      t.string :name
      t.string :genre
      t.integer :age
      t.string :hometown
    end
  end
end
