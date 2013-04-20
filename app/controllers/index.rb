get '/' do
  erb :index
end

post '/pull_updates' do
  content_type :json
  @game = Game.find(params[:id])
  @game.state.to_json
end

post '/update_ruby' do
  content_type :json
  @game = Game.find(params[:id])
  @game.update_attributes(:state => params[:state])
  params[:state].to_json
end

get '/game/:id/:player' do
  @game = Game.find_or_create_by_id(params[:id])
  erb :game
end
