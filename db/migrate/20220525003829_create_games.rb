class CreateGames < ActiveRecord::Migration[7.0]
  def change
    create_table :games do |t|
      t.string :name, null: false
      t.text :description
      t.string :game_type
      t.integer :game_id
      t.integer :team_size, null: false
      t.string :image_url

      t.timestamps
    end
  end
end
