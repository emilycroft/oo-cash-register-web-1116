class CashRegister
  attr_accessor :total
  attr_reader :name

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @item_array = []
  end

  def discount
    @discount = 20
  end

  def add_item(name, price, quantity = 1)
    @price = price
    @total += (quantity * price)
    quantity.times { |i| @item_array << name }
  end

  def apply_discount
    @total = @total - (@total * 20/100)
    if @discount > 0
       "After the discount, the total comes to $#{@total}."
    elsif @discount == 0
       "There is no discount to apply."
    end
  end

  def items
    @item_array
  end

  def void_last_transaction
    @total -= @price
  end

end
