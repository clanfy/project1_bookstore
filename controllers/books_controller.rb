#INDEX
get '/books' do
  @books = Book.all()
  erb(:'books/index')
end

#NEW
get '/books/new' do
  @authors = Author.all()
  erb(:'books/new')
end

#CREATE
post '/books' do
  @book = Book.new(params)
  @book.save()
  redirect to('/books')
end

#SHOW
get '/books/:id' do
  @book = Book.find(params[:id])
  erb(:'books/show')
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