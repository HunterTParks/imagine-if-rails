class ChangeUsernameToUsernameOnUsers < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :Username, :username
  end
end
