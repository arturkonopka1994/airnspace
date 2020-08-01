class AddFuelToSpaceships < ActiveRecord::Migration[6.0]
  def change
    add_column :spaceships, :fuel_type, :string
  end
end
