get "/" do
  redirect :"/login"
end

get "/homepage" do
  redirect "/login" unless session[:id]
  erb :homepage
end

get '/login' do
  erb :"user/login"
end

post "/login" do
  user = User.find_by(user_name: params[:user_name])
  if user && user.authenticate(params[:password])
    session[:id] = user.id
    redirect '/homepage'
  else
    status 422
    erb :"user/login"
  end
end

get "/users/new" do
  erb :"user/register"
end

post "/users" do
  p params
  @user = User.new(params[:user])
  if @user.save
    session[:id] = @user.id
    redirect '/homepage'
  else
    @errors = @user.errors.full_messages
    status 422
    erb :"user/register"
  end
end

get '/logout' do
  session.delete(:id)
  redirect "/login"
end
