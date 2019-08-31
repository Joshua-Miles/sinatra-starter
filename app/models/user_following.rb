class UserFollowing < ActiveRecord::Base
    has_many :users
    has_many :followings
end 