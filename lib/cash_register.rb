require 'pry'
class CashRegister
  attr_accessor :discount, :total, :items, :price

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @last_item_price = 0
    @price =[]
  end

  def total= total
    @total = total
  end

  def add_item title, price, quantity = 1
    @last_item_price = price
    self.price.push(price * quantity)
    self.total += price * quantity
    quantity.times do 
      @items << title
    end
  end

  def apply_discount
    if @discount == 0 
        "There is no discount to apply."
    else
        self.total -= (self.total * @discount / 100)
        "After the discount, the total comes to $#{self.total}."
    end
  end 

  def items 
    @items
  end

  def void_last_transaction
    self.total -= self.price[-1]
    if self.items == []
      self.total = 0.0
    end
  end

end

