class AddAkaToArtist < ActiveRecord::Migration[6.1]
  def change
    add_column :artists, :aka, :string
  end
end
