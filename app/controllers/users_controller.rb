class UsersController < ApplicationController

get "/signup" do 
  erb :signup
end

post "/signup" do 
  username = params[:username]
  email = params[:email]
  password =params[:password]
  if !username || username.length == 0 || !email || email.length == 0 || !password || password.length == 0
    @errormsg = "not valid"
    erb :signup
  else
  @user = User.create(:username => params[:username], :email=> params[:email], :password => params[:password])
  session[user_id] = @user.id
  erb :"/tweets/tweets"
  end
end

get "/login" do 
end

post "/login" do 
end

get "/logout" do 
end

post "/logout" do 
end

end
