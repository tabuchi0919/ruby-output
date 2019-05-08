class BonusDrink
  def self.total_count_for(amount)
    (amount - 1) / 2 + amount
  end
end

# class BonusDrink
#   @sum = 0
#   class << self
#     def total_count_for(amount)
#       culclate(amount, 0)
#       @sum
#     end
#
#     private
#
#     def culclate(amount, remainder)
#       return if amount.zero?
#
#       @sum += amount
#       culclate((amount + remainder) / 3, (amount + remainder) % 3)
#     end
#   end
# end
