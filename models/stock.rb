require('pg')
require('pry-byebug')
require_relative('../db/sql_runner')

class Stock

  attr_accessor :id, :book_id, :author_id, :quantity

  def initialize(options)
    @id = options['id'].to_i
    @book_id = options['book_id']
    @author_id = options['author_id']
    @quantity = options['quantity'].to_i
  end

  def save()
    sql = "INSERT INTO stock (book_id, author_id, quantity) VALUES ('#{@book_id}', '#{@author_id}', #{@quantity}) RETURNING * "
    stock_info = run_sql(sql)
    @id = stock_info.first['id'].to_i
  end

  def self.all
    sql = "SELECT * FROM stock"
    stock_info = run_sql(sql)
    stocks = stock_info.map {|stock| Stock.new(stock)}
    return stocks
  end

  def self.find(id)
    sql = "SELECT * FROM stock where id = #{id}"
    stocks = run_sql(sql)
    result = Stock.new(stocks.first)
    return result
  end

  def self.update(options)
    sql = "UPDATE stock SET book_id = '#{options['book_id']}', '#{options['author_id']}' WHERE id = #options['id']} "
    run_sql(sql)
  end


end