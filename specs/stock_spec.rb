require( 'minitest/autorun' )
require( 'minitest/rg' )
require_relative( '../models/stock' )
require_relative( '../models/author' )
require_relative( '../models/book' )

class TestStock < MiniTest::Test

  def setup
    options = {
      'book_id'=> 1,
      'author_id' => 2, 
      'quantity' => 2
    }
    @author = Author.new({'name' => 'L.M. Montgomery'})
    @book = Book.new({'title' => 'Anne of Green Gables', 'author_id' => author.id, 'buy_price' => 3.00, 'sell_price' => 5.99})
    @stock = Stock.new( options )
  end

  def test_total_possible_gross_profit
    assert_equal(123, @stock.total_possible_gross_profit)
  end

end