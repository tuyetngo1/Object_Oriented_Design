class Goods
  attr_reader :goods
  # #def goods
  # @goods
  # end
  def initialize
    @goods = [
      {item: 'milk', price: 1.75},
      {item: 'eggs', price: 3.25},
      {item: 'peanut butter', price: 4.00},
    ]
  end

  def price(item)
    @goods.map {
      |arr_item|.each {|key,value| puts value}
  }
end
end
