get '/' do
  redirect "/users/" if session[:id]
  erb :index
end
