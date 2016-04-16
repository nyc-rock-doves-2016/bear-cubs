post '/decks/:deck_id/rounds/:round_id/cards/:id/guess' do
  @round = Round.find_by(id: params[:round_id])
  @deck = Deck.find_by(id: params[:deck_id])
  user_guess = params[:answer]
  @card = Card.find_by(id: params[:id])
  answer = @card.answer
  evaluation = check_answer(answer, user_guess)
  @guess = Guess.create(round_id: params[:round_id],
      card_id: params[:id], is_correct?: evaluation)
  redirect "/decks/#{@deck.id}/rounds/#{@round.id}/cards/#{@card.id}/answer"
end

get '/decks/:deck_id/rounds/:round_id/cards/:id/answer' do
  @deck = Deck.find_by(id: params[:deck_id])
  @card = Card.find_by(id: params[:id])
  @round = Round.find_by(id: params[:round_id])
  @guess = Guess.find_by(round_id: params[:round_id], card_id: params[:id])
  @guess = @round.guesses.last
  erb :'guesses/show'
end
