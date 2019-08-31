class Following < ActiveRecord::Base
    has_many :following_pictures
    has_many :user_following 
    has_many :users, through: :user_following
end 