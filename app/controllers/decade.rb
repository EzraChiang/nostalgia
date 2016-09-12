get '/decades' do
  erb :'index'
end

get '/decades/:id/videogames' do
  decade = Decade.find(params[:id])
  @memory = decade.categories.find_by(name: "Video Games").memories.sample
  if request.xhr?
    erb :"_decade_show", layout: false
  end
end

get '/decades/:id/cartoons' do
  decade = Decade.find(params[:id])
  @memory = decade.categories.find_by(name: "Cartoons").memories.sample
  if request.xhr?
    erb :"_decade_show", layout: false
  end
end

get '/decades/:id/sports' do
  decade = Decade.find(params[:id])
  @memory = decade.categories.find_by(name: "Sports").memories.sample
  if request.xhr?
    erb :"_decade_show", layout: false
  end
end

get '/decades/:id/music' do
  decade = Decade.find(params[:id])
  @memory = decade.categories.find_by(name: "Music").memories.sample
  if request.xhr?
    erb :"_decade_show", layout: false
  end
end

get '/decades/:id/tv_movies' do
  decade = Decade.find(params[:id])
  @memory = decade.categories.find_by(name: "TV/MOVIES").memories.sample
  if request.xhr?
    erb :"_decade_show", layout: false
  end
end
