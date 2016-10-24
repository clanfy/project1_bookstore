require_relative('../models/book')
require_relative('../models/author')
require_relative('../models/stock')
require_relative('./sql_runner')
require('pry-byebug')

author1 = Author.new({'name' => 'L.M Montgomery'})
author1.save()

book1 = Book.new({'title' => 'Anne of Green Gables', 'author_id' => author1.id })
book1.save()
book2 = Book.new({'title' => 'Anne of Avonlea', 'author_id' => author1.id })
book2.save()

stock1 = Stock.new({'book_id'=> book1.id, 'author_id' => book1.author.id, 'quantity' => 2})
stock1.save()