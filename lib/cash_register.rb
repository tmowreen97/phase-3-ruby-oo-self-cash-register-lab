require 'pry'
class CashRegister
  attr_accessor :discount, :total

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @last_item_price = 0
  end

  def total= total
    @total = total
  end

  def add_item title, price, quantity = 1
    # binding.pry
    @quantity = quantity
    @total = @quantity*price
    # binding.pry
  end

end

c1 = CashRegister.new