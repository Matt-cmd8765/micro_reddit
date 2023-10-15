class RemoveCommentFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :comment, :text
  end
end
