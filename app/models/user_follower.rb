class UserFollower < ActiveRecord::Base
    has_many :users
    has_many :followers 
end 