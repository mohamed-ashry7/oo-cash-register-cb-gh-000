


class CashRegister

  attr_accessor :total , :discount , :title , :price , :quantity
  @@items
  def initialize(discount=0)
    @discount = discount
    @total = 0
  end

  def add_item(title,price,quantity=1)
    self.quantity = quantity
    self.price = price
    while quantity>0
      quantity-=1
      @@items << title
    end
    self.total+= quantity*price
  end

  def apply_discount
    self.total = self.total - (self.discount*self.discount)/100
    self.discount==0?"There is no discount to apply.":"After the discount, the total comes to #{self.total}."
  end

  def self.items
    self.@@items
  end
  def void_last_transaction
    total -= quantity*price
    arr.pop(quantity)
    quantity = 0 ;
  end

end
