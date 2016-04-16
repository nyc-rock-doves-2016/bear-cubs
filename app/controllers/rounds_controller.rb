post '/decks/:id/round' do
  @round = Round.create(user_id: session[:user_id], deck_id: params[:id])
  @deck = Deck.find(params[:id])
  redirect "decks/#{params[:id]}/rounds/#{@round.id}/cards/#{@deck.cards.first.id}"
end




