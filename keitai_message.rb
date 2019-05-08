KEYS = [
  ['.', ',', '!', '?', ' '],
  %w[a b c],
  %w[d e f],
  %w[g h i],
  %w[j k l],
  %w[m n o],
  %w[p q r s],
  %w[t u v],
  %w[w x y z]
].freeze
SIZES = [5, 3, 3, 3, 3, 3, 4, 3, 4].freeze

Q = gets.to_i
Q.times do
  puts(
    gets.chomp.split('0').delete_if(&:empty?).map do |i|
      KEYS[i[0].to_i - 1][(i.length - 1) % SIZES[i[0].to_i - 1]]
    end.join
  )
end
