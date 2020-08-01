class AddCaptainNameToSpaceships < ActiveRecord::Migration[6.0]
  def change
    add_column :spaceships, :captain_name, :string
  end
end
