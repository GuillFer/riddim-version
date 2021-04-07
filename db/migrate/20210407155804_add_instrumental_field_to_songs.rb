class AddInstrumentalFieldToSongs < ActiveRecord::Migration[6.1]
  def change
    add_column :songs, :instrumental, :boolean
  end
end
