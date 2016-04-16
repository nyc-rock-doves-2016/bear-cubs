# post '/decks/:id/round' do
post '/decks/:id/round' do
  @round = Round.create(user_id: session[:user_id], deck_id: params[:id])
  @deck = Deck.find_by(id: params[:id])
  redirect "decks/#{params[:id]}/rounds/#{@round.id}/cards/#{@deck.cards.first.id}"
end

get "/decks/:deck_id/rounds/:id" do
  @round = Round.find_by(id: params[:id])
  erb :'rounds/show'
end


