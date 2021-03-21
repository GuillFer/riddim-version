class CreateSongs < ActiveRecord::Migration[6.1]
  def change
    create_table :songs do |t|
      t.string :title
      t.integer :year
      t.references :label, null: false, foreign_key: true
      t.references :riddim, null: false, foreign_key: true

      t.timestamps
    end
  end
end
