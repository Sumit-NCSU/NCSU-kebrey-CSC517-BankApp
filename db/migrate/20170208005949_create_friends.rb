class CreateFriends < ActiveRecord::Migration[5.0]
  def change
    create_table :friends do |t|
      t.references :user_1, foreign_key: true
      t.references :user_2, foreign_key: true
    end
  end
end
