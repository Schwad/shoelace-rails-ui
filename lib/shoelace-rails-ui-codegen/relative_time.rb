module ShoelaceRailsUI
  def sl_relative_time(**args, &block)
    content_tag("sl-relative-time #{args[:date] ? "date=#{args[:date]}" : ""} #{args[:lang] ? "lang=#{args[:lang]}" : ""} #{args[:format] ? "format=#{args[:format]}" : ""} #{args[:numeric] ? "numeric=#{args[:numeric]}" : ""} #{args[:sync] ? " sync" : ""}", &block)
  end
end
