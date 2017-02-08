class ChangeColumnName < ActiveRecord::Migration[5.0]
  def change
	rename_column :Users, :type, :user_type
  end
end
