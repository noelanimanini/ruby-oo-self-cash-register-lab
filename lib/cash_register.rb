require 'pry'
class CashRegister
    attr_accessor :total, :discount, :items

    def initialize (total=0, discount=20)
        @total = 0
        # binding.pry
        @discount = discount
        @items = []
    end 

    # def discount
    #     self.discount += (0.20)
    # end 

    def add_item(item, price, quantity=1)
      quantity.times do 
        @items << item
      end
        @last_total = @total
        @total += price * quantity
        binding.pry
    end 

    def apply_discount
        if @total == 0 
            return "There is no discount to apply."
        else @total -= (@total * @discount) / 100
             return "After the discount, the total comes to $800."
        end 
    end 

    def void_last_transaction
         @total = @last_total
        # binding.pry
    end 
end 
