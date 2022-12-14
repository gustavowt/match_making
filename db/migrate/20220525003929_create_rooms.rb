class CreateRooms < ActiveRecord::Migration[7.0]
  def change
    create_table :rooms do |t|
      t.references :game, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.string :status
      t.string :visibility

      t.timestamps
    end

    add_index :rooms, :user_id, unique: true, where: %(status = 'active'), name: 'idx_user_when_active_rooms'
  end
end
