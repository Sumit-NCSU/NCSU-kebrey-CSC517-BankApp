class Friend < ApplicationRecord
  has_one :user1, :foreign_key => 'user_id', :class_name => 'User'
  has_one :user2, :foreign_key => 'user_id', :class_name => 'User'
end
