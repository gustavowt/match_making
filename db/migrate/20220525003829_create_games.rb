class CreateGames < ActiveRecord::Migration[7.0]
  def change
    create_table :games do |t|
      t.string :name
      t.text :description
      t.string :game_type
      t.integer :game_id
      t.string :image_url

      t.timestamps
    end
  end
end
