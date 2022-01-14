module ShoelaceRailsUI
  def tab(lang:, &block)
    <tab ["lang=\#{lang}"]
  end
end
