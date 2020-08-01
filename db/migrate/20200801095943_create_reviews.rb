class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.references :spaceship, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.text :desription
      t.integer :rating

      t.timestamps
    end
  end
end
