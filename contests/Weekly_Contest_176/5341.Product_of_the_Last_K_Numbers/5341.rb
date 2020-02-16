class ProductOfNumbers
    def initialize()
      @numbers = []
      @memo = {}
      @zeropos = 1
    end


=begin
    :type num: Integer
    :rtype: Void
=end
    def add(num)
      @numbers.push(num)
      @memo = {}

      @zeropos = 0 if num.zero?
      @zeropos += 1
    end


=begin
    :type k: Integer
    :rtype: Integer
=end
    def get_product(k)
      return @memo[k] if @memo.key?(k)
      return 0 if k >= @zeropos

      @memo[k] = @numbers[-k..-1].inject(1, :*)
    end


end

# Your ProductOfNumbers object will be instantiated and called as such:
# obj = ProductOfNumbers.new()
# obj.add(num)
# param_2 = obj.get_product(k)
