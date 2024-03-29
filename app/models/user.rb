# == Schema Information
#
# Table name: users
#
#  id                 :integer         not null, primary key
#  first_name         :string(255)
#  last_name          :string(255)
#  username           :string(255)
#  encrypted_password :string(255)
#  salt               :string(255)
#  email              :string(255)
#  location           :string(255)
#  created_at         :datetime
#  updated_at         :datetime
#

class User < ActiveRecord::Base
	attr_accessor		:password
	attr_accessible :first_name, :last_name, :username, :email, :password, :password_confirmation

	has_many :pack_lists
	
	email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	username_regex = /^[\w+.\-_@]+$/i
	
	validates :first_name, :length => {:maximum => 50}
	validates :last_name, :length => {:maximum => 50}
	validates :username, :presence => true,
	 									:length => {:within => 3..25},
	 									:format => {:with => username_regex} 
	validates :email, :presence => true,
										:format => {:with => email_regex},
										:uniqueness => {:case_sensitive => false}
	validates :password, :presence => true,
										:confirmation => true,
										:length => {:within => 6..40}

  before_save :encrypt_password

	def has_password?(submitted_password)
		encrypted_password == encrypt(submitted_password)
	end
	
	def self.authenticate(email, submitted_password)
		user = find_by_email(email)
		return nil if user.nil?
		return user if user.has_password?(submitted_password)
	end

	private
		def encrypt_password
			self.salt = make_salt if new_record?
			self.encrypted_password = encrypt(self.password)
		end

		def encrypt(string)
			secure_hash("#{salt}--#{string}")
		end
		
		def make_salt
			secure_hash("#{Time.now.utc}--#{password}")
		end
		
		def secure_hash(string)
			Digest::SHA2.hexdigest(string)
		end
end