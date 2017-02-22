class Transaction < ApplicationRecord
  belongs_to :form_account, :foreign_key => 'account_number', :class_name => 'Account'
  belongs_to :to_account, :foreign_key => 'account_number', :class_name => 'Account'

  TYPES = %w(deposit withdrawal send borrow)
  STATUS_OPTIONS = %w(pending approved)
  validates :txn_type, :inclusion => {:in => TYPES}
  validates :status, :inclusion => {:in => STATUS_OPTIONS}

  def self.all_pending
    self.where(:status => 'pending')
  end
end
