module ShoelaceRailsUI
  def format_date(date:, lang:, weekday:, era:, year:, month:, day:, hour:, minute:, second:, time_zone_name:, time_zone:, hour_format:, &block)
    "
    <format-date date=#{date}, lang=#{lang}, weekday=#{weekday}, era=#{era}, year=#{year}, month=#{month}, day=#{day}, hour=#{hour}, minute=#{minute}, second=#{second}, time-zone-name=#{time_zone_name}, time-zone=#{time_zone}, hour-format=#{hour_format}>
      #{block.call}
    </format-date>
    "
  end
end
