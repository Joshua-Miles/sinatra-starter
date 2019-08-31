class CreateFollowingPictures < ActiveRecord::Migration[5.2]
  def change
    create_table :following_pictures do |t|
      t.string :name 
      t.integer :following_picture_id 
    end 
  end
end
