class Transaction < ApplicationRecord
<<<<<<< HEAD
  belongs_to :form_account, :foreign_key => 'account_number', :class_name => 'Account'
  belongs_to :to_account, :foreign_key => 'account_number', :class_name => 'Account'
=======
  belongs_to :to_account, :class_name => 'Account'
  belongs_to :from_account, :class_name => 'Account'
  def self.all_pending
    self.where(:approval_status => 'pending')
  end
>>>>>>> ec6af02ef9eb1c857073813e97bee937977ef9a2
end
