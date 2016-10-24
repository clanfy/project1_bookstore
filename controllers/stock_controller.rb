#INDEX
get '/stock' do
  @stock = Stock.all()
  erb(:'stock/index')
end

#NEW
get '/stock/new' do

end

#CREATE
post '/stock' do

end 

#SHOW
get '/stock/:id' do

end

#EDIT
get '/stock/:id/edit' do

end

#UPDATE
put '/stock/:id' do

end

#DELETE
delete '/stock/:id' do

end 