class AccountRequest < ApplicationRecord
  has_one :user, :foreign_key => 'user_id', :class_name => 'User'
end
