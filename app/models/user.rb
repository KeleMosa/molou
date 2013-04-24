# == Schema Information
#
# Table name: users
#
#  id         :integer         not null, primary key
#  f_name     :string(255)
#  l_name     :string(255)
#  password   :string(255)
#  email      :string(255)
#  address    :string(255)
#  phone      :integer
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

class User < ActiveRecord::Base
	attr_accessible :address, :email, :f_name, :l_name, :password, :phone, :password_confirmation
	has_secure_password
	
	before_save { |users| user.email = email.downcase }
	
	validates :f_name, presence: true, length: { maximum:50 }
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true,
					format: { with: VALID_EMAIL_REGEX },
					uniqueness: { case_sensitive: false }
					
	validates :password, presence: true, length: { minimum: 6 }
	validates :password_confirmation, presence: true
				
end
