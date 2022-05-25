class CreateChallenges < ActiveRecord::Migration[7.0]
  def change
    create_table :challenges do |t|
      t.integer :challenger_id, index: true, null: false
      t.integer :challenged_id, index: true, null: false
      t.string :status

      t.timestamps
    end

    add_foreign_key :challenges, :rooms, column: :challenger_id
    add_foreign_key :challenges, :rooms, column: :challenged_id
  end
end
