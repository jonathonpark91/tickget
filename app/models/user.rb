class User < ActiveRecord::Base
	has_many :tickets

	# Constant that validates for email @ and .com
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(?:\.[a-z\d\-]+)*\.[a-z]+\z/i

	before_save {self.email = email.downcase}
	# Validates for email being filled
	validates :email, presence: :true,
			format: { with: VALID_EMAIL_REGEX },
			uniqueness: { case_sensitive: false}
	validates :password, presence: true
	validates :name, presence: true
	validates :photo, presence: true
	validates :location, presence: true

	has_secure_password
	validates :password, length: {minimum: 6}

end
