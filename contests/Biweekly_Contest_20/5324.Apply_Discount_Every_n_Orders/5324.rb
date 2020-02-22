class Cashier

=begin
    :type n: Integer
    :type discount: Integer
    :type products: Integer[]
    :type prices: Integer[]
=end
    def initialize(n, discount, products, prices)
      @count = 0
      @n = n
      @discount = discount
      @prices = {}

      products.each_with_index do |id, idx|
        @prices[id] = prices[idx]
      end
    end


=begin
    :type product: Integer[]
    :type amount: Integer[]
    :rtype: Float
=end
    def get_bill(product, amount)
      @count += 1
      price = 0.0
      product.each_with_index do |id, idx|
        price += @prices[id] * amount[idx]
      end

      if @count % @n == 0
        price -= (@discount * price) / 100
      end

      price
    end


end

# Your Cashier object will be instantiated and called as such:
# obj = Cashier.new(n, discount, products, prices)
# param_1 = obj.get_bill(product, amount)
