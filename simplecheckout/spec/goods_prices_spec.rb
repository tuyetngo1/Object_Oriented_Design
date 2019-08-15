require 'goods'

describe 'Goods' do
  it 'has items' do
  goods = Goods.new
  expect(goods).to be_kind_of (Goods)
  end
end

describe 'Goods' do
  it 'have the price and can be accessed' do
  expect(Goods.new).to respond_to(:price).with(1).argument 
  end
end

describe 'Goods' do
  it 'shows the price of the item' do
    goods = Goods.new
  expect(goods.price('milk')).to eq(1.75)
  end
end
