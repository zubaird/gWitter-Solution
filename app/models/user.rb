class User < ActiveRecord::Base
	has_many :gweets, dependent: :destroy
	has_secure_password
end
