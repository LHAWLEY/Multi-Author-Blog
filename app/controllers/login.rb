get '/login' do
  erb :login
end

post '/login' do
  user = User.find_by(email: params[:email])
  if user.authenticate(params[:password], params[:email])
    session[:user_id] = user.user_id
    redirect '/secret_page'
  else
    erb :'user/index'
  end
end
