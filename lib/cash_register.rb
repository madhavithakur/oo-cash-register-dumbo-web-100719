class CashRegister
 attr_accessor :total, :discount
 $new_arr = []
 #@@item = []
 
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    
  end 
  
   def add_item(title, price, count = 1)
    @total += price * count
     while count.positive?
     $new_arr << title
     count -= 1
   end
end 
  
  def apply_discount
    if self.discount == 0
       p "There is no discount to apply."
    else
        discount_amount = (self.total.to_i * (self.discount.to_f / 100)).to_i
        self.total -= discount_amount
       p "After the discount, the total comes to $#{self.total}."
  end
end
  
  def items
    $new_arr
  end 
  
  # def void_last_transaction
    
  # end 
  
end 
  
