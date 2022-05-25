class CreateMapChoices < ActiveRecord::Migration[7.0]
  def change
    create_table :map_choices do |t|
      t.references :map, null: false, foreign_key: true
      t.references :match, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.string :status

      t.timestamps
    end
  end
end
