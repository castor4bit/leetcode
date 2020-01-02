class NumArray
  #     :type nums: Integer[]
  def initialize(nums)
    @nums = nums
  end

  #     :type i: Integer
  #     :type j: Integer
  #     :rtype: Integer
  def sum_range(i, j)
    return 0 if j < 0

    i = [0, i].max
    j = [0, j].max
    sum = @nums.slice(i..j)&.sum
    sum.nil? ? 0 : sum
  end
end

# Your NumArray object will be instantiated and called as such:
# obj = NumArray.new(nums)
# param_1 = obj.sum_range(i, j)
