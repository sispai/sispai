class User < ActiveRecord::Base
	has_many :pool_access
	has_many :pool, through: :pool_access
end
