require 'csv'
require 'date'

class HolidayParser
  CSV_PATH = File.expand_path('./国民の祝日.csv')

  def self.parse(csv_path = CSV_PATH)
    CSV.open(csv_path).to_a[2..-3].inject([]) do |arr, row|
      arr.concat(row.reverse.each_slice(2).map { |a| [Date.parse(a[0]), a[1]] })
    end.group_by { |key, _value| key.year }.sort.to_h { |key, value| [key, value.to_h] }
  end
end
