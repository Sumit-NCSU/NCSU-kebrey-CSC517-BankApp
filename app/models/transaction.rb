class Transaction < ApplicationRecord
  belongs_to :form_account, :foreign_key => 'account_number', :class_name => 'Account'
  belongs_to :to_account, :foreign_key => 'account_number', :class_name => 'Account'

  TYPES = %w(deposit withdrawal send borrow)
  STATUS_OPTIONS = %w(pending approved)
  validates :txn_type, :inclusion => {:in => TYPES}

  def self.all_pending
    self.where(:approval_status => 'pending')
  end
end
