class Transaction < ApplicationRecord
  belongs_to :form_account, :foreign_key => 'account_number', :class_name => 'Account'
  belongs_to :to_account, :foreign_key => 'account_number', :class_name => 'Account'
  
  def self.all_pending
    self.where(:approval_status => 'pending')
  end
end
