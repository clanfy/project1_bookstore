require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')

require_relative('./models/book')
require_relative('./models/author')
require_relative('./controllers/books_controller')
require_relative('./controllers/authors_controller')