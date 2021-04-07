class CreateMembers < ActiveRecord::Migration[6.1]
  def change
    create_table :members do |t|
      t.references :band, null: false, foreign_key: { to_table: 'artists' }
      t.references :member, null: false, foreign_key: { to_table: 'artists' }
      t.timestamps
    end
  end
end
