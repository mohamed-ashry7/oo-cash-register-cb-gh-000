


class CashRegister

  attr_accessor :total , :discount , :title , :price
  def initialize(discount=0)
    @discount = discount
    @total = 0
  end
  def add_item(title,price,quantity=1)
    self.price=price
    self.title = title
    self.total+= quantity*price
  end
  def apply_discount
    self.total = self.total - (self.discount*self.discount)/100
  end
  
end
