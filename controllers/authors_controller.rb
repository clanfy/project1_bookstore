#INDEX
get '/authors' do
  @authors = Author.all()
  erb(:'authors/index')
end

#NEW
get '/authors/new' do

end

#CREATE
post '/authors' do

redirect to "authors"
end

#SHOW
get '/authors/:id' do

end

#EDIT
get '/authors/:id/edit' do 

end

#UPDATE
post '/authors/:id' do

end

#DELETE
delete '/authors' do

end