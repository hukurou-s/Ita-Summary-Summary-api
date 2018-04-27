class CreateBoards < ActiveRecord::Migration[5.2]
  def change
    create_table :boards do |t|
      t.string :name, null: false
      t.text :url, null: false, unique: true

      t.timestamps
    end
  end
end
