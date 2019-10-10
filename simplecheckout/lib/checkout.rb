# require_relative 'goods'
class Checkout
  attr_reader :total
  def initialize(goods=Goods.new)
    @scanned = []
    @items = goods.goods
  end
  def scan (this_item)
    @items.select { |hash|
      if hash[:item] == this_item
      @scanned << hash
      return @scanned
      end
    }

  end
  def total
    prices = []
    @scanned.map {|hash|
    prices << hash[:price]
    }
    return @total = prices.inject(:+)
  end

  def pay
    # puts "You need to pay £#{
    # print("%.2f" % @total)
    # }!"
  end

  def number_to_currency_br(number)
  number_to_currency(number, :unit => "£", :separator => ",", :delimiter => ".")
end
  # puts "%.2f" % 1.2399
  # number_to_currency(1234567890.506, locale: :fr)

end
