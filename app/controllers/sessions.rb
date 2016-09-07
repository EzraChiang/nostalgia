#Get Login Form
get '/login' do
  @user = User.new
  erb :'sessions/login'
end

#Login (create session)
post '/login' do
  user_params = params[:user]
  @user = User.authenticate(user_params[:email], user_params[:password])
  if @user
    session[:user_id] = @user.id
    redirect :"/profile/#{@user.id}"
  else
    status 422
    @errors = ["Login failed"]
    User.new(email: params[:email])
    erb :'sessions/login'
  end
end
