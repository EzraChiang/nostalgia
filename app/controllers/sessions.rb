get '/login' do
  erb :'sessions/login'
end

post '/login' do
  @user = User.find_by(email: params[:user][:email])
  if User.authenticate(params[:user][:email], params[:user][:password])
    session[:user_id] = @user.id
    session[:first_name] = @user.first_name
    redirect "/users/#{@user.id}"
  else
    @error = "The credentials you provided were incorrect. Please try again."
    erb :'sessions/login'
  end
end

delete '/logout' do
  session.delete(:user_id)
  session.delete(:first_name)
  redirect '/'
end
