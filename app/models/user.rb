class User < ActiveRecord::Base
	has_secure_password

	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

	validates :email, presence: true, uniqueness: {case_sensitive: false}, format: {with: VALID_EMAIL_REGEX}
	validates :name, presence: true, length: {maximum: 50}
	validates :password, presence: true, length: {minimum: 4}
end
