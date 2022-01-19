module ShoelaceRailsUI
  def sl_tooltip(placement:, &block)
    content_tag(tooltip placement=#{placement}, yield)
  end
end
