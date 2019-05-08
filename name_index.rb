class NameIndex
  HASH_INDEX = {
    /\A[ァ-オ].*/ => 'ア',
    /\A[カ-ゴ].*/ => 'カ',
    /\A[サ-ゾ].*/ => 'サ',
    /\A[タ-ド].*/ => 'タ',
    /\A[ナ-ノ].*/ => 'ナ',
    /\A[ハ-ポ].*/ => 'ハ',
    /\A[マ-モ].*/ => 'マ',
    /\A[ャ-ヨ].*/ => 'ヤ',
    /\A[ラ-ロ].*/ => 'ラ',
    /\A[ヮ-ン].*/ => 'ワ'
  }.freeze

  def self.create_index(names)
    names.group_by do |name|
      HASH_INDEX.each do |key, value|
        break value if name.match(key)
      end
    end.map do |key, value|
      [key, value.sort]
    end.sort
  end
end
