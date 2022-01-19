module ShoelaceRailsUI
  def sl_dropdown(placement:, &block)
    content_tag("sl-dropdown placement=#{placement}", yield)
  end
end
