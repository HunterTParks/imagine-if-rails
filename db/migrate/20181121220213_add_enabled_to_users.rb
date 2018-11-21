class AddEnabledToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :enabled, :bool
  end
end
