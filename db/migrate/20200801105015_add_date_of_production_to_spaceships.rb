class AddDateOfProductionToSpaceships < ActiveRecord::Migration[6.0]
  def change
    add_column :spaceships, :date_of_production, :integer
  end
end
