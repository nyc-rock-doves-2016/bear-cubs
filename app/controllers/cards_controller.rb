get '/decks/:deck_id/rounds/:round_id/cards/:id' do
  @round = Round.find_by(id: params[:round_id])
  @deck = Deck.find_by(id: params[:deck_id])
  @card = Card.find_by(id: params[:id])
  erb :'cards/show'
end
