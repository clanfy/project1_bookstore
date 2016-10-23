#INDEX
get '/authors' do
  @authors = Author.all()
  erb(:'authors/index')
end

#NEW
get '/authors/new' do
erb(:'authors/new')
end

#CREATE
post '/authors' do
@author = Author.new(params)
@author.save()
redirect to('/authors')
end

#SHOW
get '/authors/:id' do
 @author = Author.find(params[:id])
 erb(:'authors/show')
end

#EDIT
get '/authors/:id/edit' do 
  @author = Author.find(params[:id])
  erb(:'authors/edit')
end

#UPDATE
put '/authors/:id' do
  @author = Author.update(params)
  redirect to("/authors/#{params[:id]}")
end

#DELETE
delete '/authors' do

end