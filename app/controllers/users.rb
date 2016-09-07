get '/users/' do
  puts "(((((((((((((((((((((((((((((((())))))))))))))))))))))))))))))"
  puts session
  erb :homepage
end

post '/users' do
  @user = User.new(params[:user])
  if @user.valid? && (@user.password != "")
    @user.save
    session[:id] = @user.id
    redirect'/'
  elsif @user.password == ""
    @errors = "Password had some issues!"
  elsif @user.save == false
    @errors = "User name had some issues!"
  end
    status 422
    erb :register
end

get '/users/new' do
  erb :register
end

get '/login' do
  erb :login
end

post '/login' do
  user_params = params[:user]
  user = User.find_by(name: user_params[:name])
  if user && user.authenticate(user_params[:password])
    session[:id] = user.id
  puts session
    redirect '/'
  else
    status 422
    @errors = ["login failed"]
    erb :'/login'
  end
end

delete '/login' do
  session.destroy
  redirect '/'
end
