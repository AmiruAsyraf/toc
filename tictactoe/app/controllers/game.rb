get '/boardtwo' do

  erb :game_board2
end

get '/board/:game_id' do
  @user = User.find(session[:id])
  @box = Box.last
  @game = Game.find(params[:game_id])
  if @game.user_id == session[:id]
    player_one = User.find(session[:id])
    @player = "player_one"
  else
    player_two = User.find(session[:id])
    @player = "player_two"
  end

  # @checked_index = params[:checked_index]
  # @current_player = params[:current_player]


  erb :game_board
end


