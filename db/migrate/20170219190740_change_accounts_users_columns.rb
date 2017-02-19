class ChangeAccountsUsersColumns < ActiveRecord::Migration[5.0]
  def change
    rename_column :accounts_users, :accounts_id, :account_id
    rename_column :accounts_users, :users_id, :user_id
  end
end
