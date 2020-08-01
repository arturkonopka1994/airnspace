class AddLocationToSpaceships < ActiveRecord::Migration[6.0]
  def change
    add_column :spaceships, :location, :string
  end
end
