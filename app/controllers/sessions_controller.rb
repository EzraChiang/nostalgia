get '/login' do
  erb :'sessions/login'
end

post '/login' do
  puts params[:user]
  @current_user = User.authenticate(params[:user][:email], params[:user][:password])
  if @current_user
    session[:user_id] = @current_user.id
    redirect '/'
  else
    status 418
    erb :'sessions/login'
  end

end

get '/logout' do
  session.destroy
  redirect '/'
end
