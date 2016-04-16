get '/rounds/:round_id/cards/:id' do
  erb :'cards/show'
end

post '/rounds/:round_id/cards/:id/guess' do
end
