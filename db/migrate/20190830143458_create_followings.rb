class CreateFollowings < ActiveRecord::Migration[5.2]
  def change
    create_table :followings do |t|
      t.string :name 
      t.integer :following_picture_id
    end 
  end
end
