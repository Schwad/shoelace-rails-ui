module ShoelaceRailsUI
  def sl_tab_group(placement:, activation:, lang:, &block)
    content_tag("sl-tab-group placement=#{placement}, activation=#{activation}, lang=#{lang}", yield)
  end
end
