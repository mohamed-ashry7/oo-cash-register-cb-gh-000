


class CashRegister

  attr_accessor :total , :discount , :title , :price
  def initialize(discount=0)
    @discount = discount
    @total = 0
  end
  def add_item(title,price,quantity=1)
    self.price=price
    self.title = title
    self.total+=total
  end
end
