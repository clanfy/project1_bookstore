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
  @book = Book.find(params[:id])
  @authors = Author.all()
  erb(:'books/edit')
end

#UPDATE
put '/books/:id' do
  @book = Book.update(params)
  redirect to("/books/#{params[:id]}")
end

#DELETE
delete '/books/:id' do
  Book.delete(params[:id])
  redirect to('/books')
end