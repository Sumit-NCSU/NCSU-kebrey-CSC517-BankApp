class CreateTransactions < ActiveRecord::Migration[5.0]
  def change
    create_table :transactions do |t|
      t.boolean :approval_status
      t.boolean :active_status
      t.decimal :amount
      t.datetime :effective_date
      t.references :from_account, foreign_key: true
      t.references :to_account, foreign_key: true
      t.timestamps
    end
  end
end
