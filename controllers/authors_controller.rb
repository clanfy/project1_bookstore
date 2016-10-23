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

end

#UPDATE
post '/authors/:id' do

end

#DELETE
delete '/authors' do

end