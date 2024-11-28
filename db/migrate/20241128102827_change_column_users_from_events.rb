class ChangeColumnUsersFromEvents < ActiveRecord::Migration[7.1]
  def change
    rename_column :events, :users_id, :user_id
    add_foreign_key :events, :users, column: :user_id
  end
end
