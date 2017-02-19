class CreateAccountsUsersTable < ActiveRecord::Migration[5.0]
  def change
    create_table :accounts_users do |t|
      t.references :accounts
      t.references :users
      t.timestamps
    end
  end
end