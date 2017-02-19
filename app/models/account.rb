class Account < ApplicationRecord

  STATUS_OPTIONS = %w(active closed)
  #attr_accessible :account_number, :balance, :status, :users
  has_and_belongs_to_many :users
  before_create :generate_account_number

  #attr_accessor :account_number, :balance, :status
  validates :balance, :presence => true
  validates :status, :presence => true
  validates :status, :inclusion => {:in => STATUS_OPTIONS}

  #validates :users, :presence => true

  private def generate_account_number
    self.account_number = loop do
      random_number = rand(100000000...1000000000)
      break random_number # unless Account.exists?(account_number: random_number)
    end
  end
end
