get '/' do
  erb :'index'

end

get '/inspect' do
  session.inspect
end
