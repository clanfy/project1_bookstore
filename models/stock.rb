require( 'pg' )
require( 'pry-byebug' )
require_relative('../db/sql_runner')

class Stock

  attr_reader :id, :book_id, :author_id

  def initialize(options)
    @id = options['id'].to_i
    @book_id = options['book_id']
    @author_id = options['author_id']
  end

  def save()
    sql = "INSERT INTO stock (book_id, author_id) VALUES ('#{@book_id}, '#{@author_id}') RETURNING * "
    stock_info = run_sql(sql)
    @id = stock_info.first['id'].to_i
  end
end