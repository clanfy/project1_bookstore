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

end