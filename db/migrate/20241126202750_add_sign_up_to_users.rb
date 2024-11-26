class AddSignUpToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users,:sign_up, :char
  end
end
