module ShoelaceRailsUI
  def sl_progress_ring(**args, &block)
    content_tag("sl-progress-ring #{args[:indicator] ? "indicator=#{args[:indicator]}" : ""} #{args[:indicatorOffset] ? "indicatorOffset=#{args[:indicatorOffset]}" : ""} #{args[:value] ? "value=#{args[:value]}" : ""} #{args[:label] ? "label=#{args[:label]}" : ""} #{args[:lang] ? "lang=#{args[:lang]}" : ""}", &block)
  end
end
