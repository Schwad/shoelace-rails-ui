module ShoelaceRailsUI
  def tab_group(placement:, activation:, lang:, &block)
    "
    <tab-group placement=#{placement}, activation=#{activation}, lang=#{lang}>
      #{block.call}
    </tab-group>
    "
  end
end
