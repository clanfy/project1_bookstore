require( 'pg' )
require( 'pry-byebug' )
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

  def self.all()
    sql = "SELECT * FROM authors"
    authors_info = run_sql(sql)
    authors = authors_info.map {|author| Author.new(author)}
    return authors
  end

end