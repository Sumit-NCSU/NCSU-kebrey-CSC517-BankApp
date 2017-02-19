class ChangeAccountNumberDataType < ActiveRecord::Migration[5.0]
  def change
    change_column :accounts, :account_number, :integer
  end
end
