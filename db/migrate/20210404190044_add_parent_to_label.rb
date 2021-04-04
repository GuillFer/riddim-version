class AddParentToLabel < ActiveRecord::Migration[6.1]
  def change
    add_reference :labels, :parent, foreign_key: { to_table: :labels }
  end
end
