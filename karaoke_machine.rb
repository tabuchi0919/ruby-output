class KaraokeMachine
  KEYS = %w[A A# B C C# D D# E F F# G G#].freeze

  def initialize(melody)
    @melody = melody
  end

  def transpose(amount)
    @melody.gsub(/[A-G]#?/) { |k| KEYS[(KEYS.index(k) + amount) % 12] }
  end
end
