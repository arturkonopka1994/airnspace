class AddCurrencyToSpaceships < ActiveRecord::Migration[6.0]
  def change
    add_column :spaceships, :currency, :string
  end
end
