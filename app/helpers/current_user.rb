module CurrentUser
  def current_user
    User.find_by(id: session[:user_id])
  end
end

helpers CurrentUser