class RenameFoundedToFounder < ActiveRecord::Migration[6.1]
  def change
    rename_column :labels, :founded_by_id, :founder_id
  end
end
