class Transaction < ApplicationRecord
  belongs_to :to_account, :class_name => 'Account'
  belongs_to :from_account, :class_name => 'Account'
  def self.all_pending
    self.where(:approval_status => 'pending')
  end
end
