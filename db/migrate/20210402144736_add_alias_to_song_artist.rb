class AddAliasToSongArtist < ActiveRecord::Migration[6.1]
  def change
    add_column :song_artists, :as, :string
  end
end
