require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
# require('json')

require_relative('./models/book')
require_relative('./models/author')
require_relative('./models/stock')
require_relative('./controllers/books_controller')
require_relative('./controllers/authors_controller')
require_relative('./controllers/stock_controller')

get '/home' do
  erb(:'index')
end





