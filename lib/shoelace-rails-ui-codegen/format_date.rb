module ShoelaceRailsUI
  def sl_format_date(**args)
    content_tag("sl-format-date #{args[:date] ? "date=#{args[:date]}" : ""} #{args[:lang] ? "lang=#{args[:lang]}" : ""} #{args[:weekday] ? "weekday=#{args[:weekday]}" : ""} #{args[:era] ? "era=#{args[:era]}" : ""} #{args[:year] ? "year=#{args[:year]}" : ""} #{args[:month] ? "month=#{args[:month]}" : ""} #{args[:day] ? "day=#{args[:day]}" : ""} #{args[:hour] ? "hour=#{args[:hour]}" : ""} #{args[:minute] ? "minute=#{args[:minute]}" : ""} #{args[:second] ? "second=#{args[:second]}" : ""} #{args[:timeZoneName] ? "timeZoneName=#{args[:timeZoneName]}" : ""} #{args[:timeZone] ? "timeZone=#{args[:timeZone]}" : ""} #{args[:hourFormat] ? "hourFormat=#{args[:hourFormat]}" : ""}", yield)
  end
end
