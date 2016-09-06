helpers do
  def current_user
    User.find_by(id: session[:user_id])
  end

  def logged_in
    return true if current_user
  end
end
