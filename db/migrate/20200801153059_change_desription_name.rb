class ChangeDesriptionName < ActiveRecord::Migration[6.0]
  def change
    change_table :reviews do |t|
      t.rename :desription, :description
    end
  end
end
