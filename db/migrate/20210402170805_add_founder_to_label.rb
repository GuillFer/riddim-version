class AddFounderToLabel < ActiveRecord::Migration[6.1]
  def change
    add_reference :labels, :founded_by, foreign_key: { to_table: :artists }
  end
end
