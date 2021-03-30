class AddProducerToSongs < ActiveRecord::Migration[6.1]
  def change
    add_reference :songs, :producer, foreign_key: { to_table: :artists }
  end
end
