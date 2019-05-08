require 'Date'

class Calendar
  def self.generate
    [
      Date.today.strftime('%b %Y').center(20),
      [
        *Date::DAYNAMES.each_with_object(0..1).map(&:slice),
        *Array.new(Date.today.cwday % 7),
        *1..Date.new(Time.now.year, Time.now.month, -1).day
      ].map(&:to_s).each_with_object(2).map(&:rjust).each_slice(7).each_with_object(' ').map(&:join)
    ].join("\n")
  end
end
