class AddAliasToProducer < ActiveRecord::Migration[6.1]
  def change
    add_column :songs, :producer_alias, :string
  end
end
