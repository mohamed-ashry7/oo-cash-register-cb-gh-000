


class CashRegister

  attr_accessor :total , :discount , :title , :price , :quantity , :items

  def initialize(discount=0)
    @discount = discount
    @items =[] 
    @total = 0
  end

  def add_item(title,price,quantity=1)
    self.quantity = quantity
    self.price = price
    self.total+= quantity*price
    while quantity>0
      quantity-=1
      @items << title
    end
  end

  def apply_discount
    self.total = self.total * (1-self.discount/100.0)
    self.discount==0?"There is no discount to apply.":"After the discount, the total comes to $#{self.total.to_i}."
  end


  def void_last_transaction
    self.total -= quantity*price
    arr.pop(quantity)
    quantity = 0
  end

end
