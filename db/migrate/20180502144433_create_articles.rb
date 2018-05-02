class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :name, null: false
      t.text :url, null: false, unique: true
      t.integer :board_id

      t.timestamps
    end
  end
end
