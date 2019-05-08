class SumMatrix
  def self.sum(matrix)
    l = nil
    matrix.map { |row| row + [row.sum] }.transpose.map { |row| row + [row.sum] }.transpose.tap do |mat|
      l = mat.last.last.to_s.length
    end.map do |row|
      row.map(&:to_s).each_with_object(l).map(&:rjust).join('|')
    end.join("\n")
  end
end
