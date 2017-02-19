class User < ApplicationRecord
	attr_accessor :password

	EMAIL_REGEX = /\A(|(([A-Za-z0-9]+_+)|([A-Za-z0-9]+\-+)|([A-Za-z0-9]+\.+)|([A-Za-z0-9]+\++))*[A-Za-z0-9]+@((\w+\-+)|(\w+\.))*\w{1,63}\.[a-zA-Z]{2,6})\z/i
	validates :name, :presence => true
	validates :email, :presence => true, :uniqueness => true, :format => EMAIL_REGEX
	validates :password, :confirmation => true, :length => { :in => 6..50 }	
	
	before_save :encrypt_password
	after_save :clear_password

	require 'digest/sha1'

	def encrypt_password
		if password.present?
			self.password = Digest::SHA1.hexdigest(self.password)
    end
  end
	
	def clear_password
		self.password = nil
  end

  def self.authenticate(login_email='', login_password='')
    user = User.find_by_email(login_email)
    if user && user.match_password(login_password)
      return user
    else
      return false
    end
  end

  def match_password(login_password='')
    encrypted_password == endDigest::SHA1.hexdigest(login_password)
  end

end
