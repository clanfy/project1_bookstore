require('pg')
require('pry-byebug')
require_relative('../db/sql_runner')

class Author

  attr_reader :id, :name

  def initialize(options)
    @id = options['id'].to_i
    @name = options['name']
  end

  def save()
    sql = "INSERT INTO authors (name) VALUES ('#{@name}') RETURNING * "
    author_info = run_sql(sql)
    @id = author_info.first['id'].to_i
  end

  def books()
    sql = "SELECT * FROM books WHERE author_id = #{@id}"
    books_info = run_sql(sql)
    books = books_info.map {|book| Book.new(books_info)}
    return books
  end

  def self.all()
    sql = "SELECT * FROM authors"
    authors_info = run_sql(sql)
    authors = authors_info.map {|author| Author.new(author)}
    return authors
  end

  def self.find(id)
    sql = "SELECT * FROM authors WHERE id = #{id}"
    authors = run_sql(sql)
    result = Author.new(authors.first)
    return result
  end

  def self.update(options)
    sql = "UPDATE authors SET name = '#{options['name']}' WHERE id = #{options['id']}"
    run_sql(sql)
  end

  def self.delete(id)
    sql = "DELETE FROM authors WHERE id =#{id}"
    run_sql(sql)
  end

end





