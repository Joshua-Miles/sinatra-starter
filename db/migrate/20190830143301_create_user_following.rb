class CreateUserFollowing < ActiveRecord::Migration[5.2]
  def change
    create_table :user_followings do |t|
      t.integer :user_id
      t.integer :following_id
    end 
  end
end
