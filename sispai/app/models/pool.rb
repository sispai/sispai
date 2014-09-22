class Pool < ActiveRecord::Base
	belongs_to :user
	has_many :pool_access
	has_many :user, through: :pool_access
end
