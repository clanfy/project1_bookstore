#INDEX
get '/books' do
  @books = Book.all()
  erb(:'books/index')
end

#NEW
get '/books/new' do

end

#CREATE
post '/books' do

redirect to "books"
end

#SHOW
get '/books/:id' do

end

#EDIT
get '/books/:id/edit' do 

end

#UPDATE
post '/books/:id' do

end

#DELETE
delete '/books' do

end