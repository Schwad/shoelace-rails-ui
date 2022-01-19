module ShoelaceRailsUI
  def sl_tab_group(placement:, activation:, lang:)
    content_tag("sl-tab-group placement=#{placement}, activation=#{activation}, lang=#{lang}", yield)
  end
end
