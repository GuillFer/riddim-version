class CreateRiddims < ActiveRecord::Migration[6.1]
  def change
    create_table :riddims do |t|
      t.string :title

      t.timestamps
    end
  end
end
