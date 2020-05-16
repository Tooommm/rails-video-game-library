class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.string :title
      t.integer :note
      t.text :description
      t.boolean :finished
      t.string :editor
      t.integer :year
      t.references :library, null: false, foreign_key: true

      t.timestamps
    end
  end
end
