class CreateAccounts < ActiveRecord::Migration[5.0]
  def change
    create_table :accounts do |t|
      t.numeric :account_number
      t.string :status
      t.decimal(10,2) :balance

      t.timestamps
    end
  end
end
