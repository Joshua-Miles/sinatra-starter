class Follower < ActiveRecord::Base 
    has_many :follower_pictures
    has_many :user_followers
    has_many :users, through: :user_followers 
end 