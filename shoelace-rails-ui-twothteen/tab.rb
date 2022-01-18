module ShoelaceRailsUI
  def tab(lang:, &block)
    "
    <tab lang=#{lang}>
      #{block.call}
    </tab>
    "
  end
end
