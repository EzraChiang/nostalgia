get '/inspect' do
  session.inspect
end

get '/login' do
  erb :'sessions/login'
end

post '/login' do

  puts params
  @current_user = User.authenticate(params[:username], params[:password])
  session[:user_id] = @current_user.id
  redirect :'/users/profile'

end

get '/logout' do

end

delete '/logout' do
  session[:user_id] = nil
  redirect '/'
end
