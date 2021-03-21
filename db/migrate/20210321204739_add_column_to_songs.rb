class AddColumnToSongs < ActiveRecord::Migration[6.1]
  def change
    add_column :songs, :original, :boolean
  end
end
