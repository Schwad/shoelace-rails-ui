module ShoelaceRailsUI
  def sl_relative_time(date:, lang:, format:, numeric:)
    content_tag("sl-relative-time date=#{date}, lang=#{lang}, format=#{format}, numeric=#{numeric}", yield)
  end
end
