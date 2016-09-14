get '/posts' do
  @posts = Post.all
  erb :homepage
end

get '/posts/new' do
  redirect "/login" unless session[:id]
  if request.xhr?
    erb :'/post/new', layout: false
  else
    erb :'/post/new'
  end
end

get '/posts/:id' do
  @post = Post.find(params[:id])
  erb :'/post/show'
end

post '/posts' do
  @post = Post.new(title: params[:title], body: params[:body], user_id: session[:id])
  if @post.save
    if request.xhr?
      erb :"post/_post", layout: false, locals: {post: @post}
    else
      redirect '/posts'
    end
  else
    if request.xhr?
      erb :'/post/new', layout: false
    else
      @errors = @post.errors.full_messages
      erb :'/post/new'
    end
  end
end

post '/posts/:id/comment' do
  @post = Post.find(params[:id])
  comment = Comment.new(comment: params[:comment], user_id: session[:id], post_id: @post.id)

  if comment.save
    if request.xhr?
      erb :"/comment/show", layout: false, locals: {comment: comment}
    else
      redirect "/posts/#{@post.id}"
    end
  else
    status 422
    redirect "/posts/#{@post.id}"
  end

end

post "/posts/:id/rating" do
  @post = Post.find(params[:id])
  rating = Rating.new(rating: params[:rating], user_id: session[:id], post_id: @post.id)
  if rating.save
    if request.xhr?
      erb :"rating/_rating", layout: false
    else
      redirect "/posts/#{@post.id}"
    end
  else
    status 422
    redirect "/posts/#{@post.id}"
  end

end





