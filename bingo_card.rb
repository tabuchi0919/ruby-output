class Bingo
  def self.generate_card
    [
      'BINGO'.chars,
      *(1..75).each_slice(15).each_with_object(5).map(&:sample).transpose.tap { |nums| nums[2][2] = nil }
    ].map do |row|
      row.map(&:to_s).each_with_object(2).map(&:rjust).join(' | ')
    end.join("\n")
  end
end
