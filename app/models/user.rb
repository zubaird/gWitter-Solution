class User < ActiveRecord::Base
	has_many :gweets, dependent: :destroy
end