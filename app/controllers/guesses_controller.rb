post '/rounds/:round_id/cards/:id/guess' do
  @round = Round.find_by(id: params[:round_id])
  user_guess = params[:answer]
  @card = Card.find_by(id: params[:id])
  answer = @card.answer
  evaluation = check_answer(answer, user_guess)
  @guess = Guess.create(round_id: params[:round_id],
      card_id: params[:id], is_correct?: evaluation)
p "<<<<<<<<<<<<<<<<<<<<<<<"
  redirect "/rounds/#{@round.id}/cards/#{@card.id}/answer"
end

get '/rounds/:round_id/cards/:id/answer' do
  @card = Card.find_by(id: params[:id])
  @round = Round.find_by(id: params[:round_id])
  erb :'guesses/show'
end
