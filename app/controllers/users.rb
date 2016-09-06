get '/users/new' do
  @user = User.new(params[:user])
  erb :'users/register'
end

post '/users' do
  @user = User.new(params[:user])
  if @user.save
    session[:user_id] = @user.id
    session[:first_name] = @user.first_name
    redirect "/users/#{@user.id}"
  else
    status 422
    erb :'users/register'
  end
end

get '/users/:id' do
  @user = User.find(session[:user_id])
  erb :'users/profile'
end
