module ShoelaceRailsUI
  def sl_tooltip(placement:, &block)
    content_tag("sl-tooltip placement=#{placement}", yield)
  end
end
