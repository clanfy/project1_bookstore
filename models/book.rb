require( 'pg' )
require( 'pry-byebug' )
require_relative('../db/sql_runner')

class Book

  attr_reader :id, :title

  def initialize(options)
    @id = options['id'].to_i
    @title = options['title']
    @author_id = options['author_id']
  end

  def save()
    sql = "INSERT INTO books (title, author_id) VALUES ('#{@title}', #{@author_id}) RETURNING * "
    book_info = run_sql(sql)
    @id = book_info.first['id'].to_i
  end

  def self.all
    sql = "SELECT * FROM books"
    books_info = run_sql(sql)
    books = books_info.map {|book| Book.new(book)}
    return books
  end

end