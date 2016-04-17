#existing user login
enable :session

get '/login' do
  erb :'/sessions/new'
end

post '/login' do
  user = User.find_by(email: params[:user][:email])
  if user && user.authenticate(params[:user][:password])
      session[:user_id] = user.id
      redirect '/'
    else
      @errors = ["Wrong username or password"]
      erb :'/sessions/new'
  end
end

get '/logout' do
  session.clear
  redirect '/'
end
