module ShoelaceRailsUI
  def sl_dropdown(placement:)
    content_tag("sl-dropdown placement=#{placement}", yield)
  end
end
