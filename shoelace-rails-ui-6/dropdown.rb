module ShoelaceRailsUI
  def sl_dropdown(placement:, &block)
    content_tag("dropdown placement=#{placement}", yield)
  end
end
