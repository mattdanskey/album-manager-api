class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.integer :album_id
      t.integer :track
      t.string :title

      t.timestamps
    end
  end
end
