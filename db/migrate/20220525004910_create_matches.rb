class CreateMatches < ActiveRecord::Migration[7.0]
  def change
    create_table :matches do |t|
      t.references :room, null: false, foreign_key: true
      t.references :challenge, null: false, foreign_key: true
      t.string :status

      t.timestamps
    end
  end
end
