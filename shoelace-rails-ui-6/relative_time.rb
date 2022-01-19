module ShoelaceRailsUI
  def sl_relative_time(date:, lang:, format:, numeric:, &block)
    content_tag("relative-time date=#{date}, lang=#{lang}, format=#{format}, numeric=#{numeric}", yield)
  end
end
