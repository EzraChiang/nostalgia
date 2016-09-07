#Get Login Form
get '/login' do
  @user = User.new
  erb :'sessions/login'
end

#Login (create session)
post '/login' do
  user_params = params[:user]
  @user = User.find_by(email: user_params[:email])
  if @user && @user.authenticate(user_params[:password])
    session[:user_id] = @user.id
    redirect :"/profile/#{@user.id}"
  else
    status 422
    @errors = ["Login failed"]
    User.new
    erb :'sessions/login'
  end
end

#Logout (delete session)
delete '/logout' do
  session.delete(:user_id)
  redirect :'/'
end
