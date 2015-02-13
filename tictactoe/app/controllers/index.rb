enable :sessions
set :protection, :except => [:json_csrf]

get '/' do
  # Look in app/views/index.erb
  erb :index
end

post '/login' do
  account = User.authenticate(params[:post])

  if account
    session[:id] = account.id
    redirect to("/lobby")
  else
    redirect to ("/")
  end
end

post '/signup' do
  new_account = User.create(params[:post])
  session[:id] = new_account.id
    redirect to ("/lobby")
end

get '/signout' do
  session.clear
  redirect to ('/')
end

get '/lobby' do
  @user = User.find(session[:id])
  @list_games = Game.where(user1_id: 0)
  erb :lobby
end

get '/room' do
  @user = User.find(session[:id])
  @user.games.create()
  Box.create()
  @list_games = Game.where(user1_id: 0)
  redirect to ("/lobby")
end
