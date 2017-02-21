class CreateAccountRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :account_requests do |t|
	  t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
