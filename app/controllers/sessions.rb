get '/inspect' do
  session.inspect
end

get '/login' do
  erb :'sessions/login'
end

post '/login' do
  @current_user = User.authenticate(params[:username], params[:password])
  if @current_user
    session[:user_id] = @current_user.id
    redirect :'/users/profile'
  else
    status 418
    erb :'sessions/login'
  end
end


delete '/logout' do
  session[:user_id] = nil
  redirect '/'
end
