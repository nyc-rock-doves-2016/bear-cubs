post '/decks/:deck_id/rounds/:round_id/cards/:id' do
  @round = Round.find_by(id: params[:round_id])
  @deck = Deck.find_by(id: params[:deck_id])
  @card = Card.find_by(id: params[:id])
  redirect "/decks/#{@deck.id}/rounds/#{@round.id}/cards/#{@card.id}"
end

get '/decks/:deck_id/rounds/:round_id/cards/:id' do
  @round = Round.find_by(id: params[:round_id])
  @deck = Deck.find_by(id: params[:deck_id])
  if @round.next_card
    @round = Round.find_by(id: params[:round_id])
    @card = @round.next_card
    erb :'cards/show'
  else
  redirect "/decks/#{@deck.id}/rounds/#{@round.id}"
  end
end

