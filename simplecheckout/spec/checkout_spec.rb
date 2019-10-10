require 'checkout'
# require 'goods'

describe Checkout do
  it 'can scan the items' do
  checkout = Checkout.new
  expect(checkout.scan('milk')).to eq([{:item=>"milk", :price=>1.75}])
end

  it 'can return the total' do
    checkout = Checkout.new
    checkout.scan('milk')
    checkout.scan('eggs')
    expect(checkout.total).to eq(5.00)
  end

  it 'give the total in correct format' do
    checkout = Checkout.new
    checkout.scan('milk')
    checkout.scan('eggs')
    checkout.total
    expect{checkout.pay}.to output("You need to pay £05.00!").to_stdout
  end
end
