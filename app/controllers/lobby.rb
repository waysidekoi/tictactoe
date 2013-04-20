
post "/login" do
  user = User.find_or_create_by_email(:email=>params[:email])
  session[:user_id] = user.id
  redirect to "/lobby"
end

get "/lobby" do
  authenticate! 
  erb :lobby
end

get "/games/active" do 
  authenticate! 
  @games = Game.active_games
  erb :game_index, :layout => false
end

get '/users/active' do
  authenticate! 
  @users = User.active_users
  erb :user_list, :layout => false
end

post '/games/new' do
  authenticate! 
  game = current_user.games.create(:active=>true)
  redirect to "/games/#{game.id}"
end

put '/games/:id/join' do
  authenticate! 
  @game = Game.find_by_id(params[:id])
  @game.active = false
  @game.save
  @game.opponent = current_user
  redirect to "/games/#{@game.id}"
end

get "/games/:id" do
  authenticate! 
  ## join the actual game here and sync with Carolyn and Conor.
end
