class CreateSpaceships < ActiveRecord::Migration[6.0]
  def change
    create_table :spaceships do |t|
      t.string :model
      t.integer :capacity
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
