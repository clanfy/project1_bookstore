require( 'minitest/autorun' )
require( 'minitest/rg' )
require_relative( '../models/book' )

class TestBook < MiniTest::Test

  def setup
    options = {
      'title' => 'Anne of Green Gables', 
      'author_id' => 1, 
      'buy_price' => 13.00, 
      'sell_price' => 15.50
    }
    @book = Book.new( options )
  end

  def test_markup
    assert_equal(19.0, ('%.2f' % (@book.mark_up)).to_f * 100 )
  end

end