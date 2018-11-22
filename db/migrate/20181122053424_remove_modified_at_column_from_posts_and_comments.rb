class RemoveModifiedAtColumnFromPostsAndComments < ActiveRecord::Migration[5.2]
  def change
    remove_column :posts, :modified_at
    remove_column :comments, :modified_at
  end
end
