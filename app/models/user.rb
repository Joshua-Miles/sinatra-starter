class User < ActiveRecord::Base
    # add relationship here 
    has_many :pictures 
    has_many :user_followers
    has_many :user_followings
    has_many :followers, through: :user_followers
    has_many :following, through: :user_followings

end 