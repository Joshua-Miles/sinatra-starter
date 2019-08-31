class ApplicationController < Sinatra::Base
  set :views, "./app/views"

  get '/' do
    erb :"application/index"
  end

  post '/new_users' do 
    user = User.create(params["user"])
    user.password = params["user"]["password"]
    user.save
    @user_name = user.name 
    erb :show 
  end 

  post '/users' do 
    @name = params["user"]
    @params_user_name = params["user"]["name"]
    @password = params["user"]["password"]
    user = User.find_by name: "#{@params_user_name}" 
    @user_name = user.name 
    erb :show 
  end 

  post '/users/comment' do 
    @comment = params["comment"]
    erb :comment 
  end 

  post '/users/pictures' do 
    picture = Picture.create
    picture.name = params["picture"]["name"]
    picture.user_id = params["picture"]["user_id"]
    picture.url = params["picture"]["url"]
    picture.save 
    @picture_url = picture.url
    erb :picture_index 
    
  end 

  post '/users/pictures/like' do 
    picture = Picture.last 
    @picture = picture.name 
    erb :like
  end 
end