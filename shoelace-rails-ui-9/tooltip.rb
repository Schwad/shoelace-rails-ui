module ShoelaceRailsUI
  def sl_tooltip(placement:)
    content_tag("sl-tooltip placement=#{placement}", yield)
  end
end
