module ShoelaceRailsUI
  def range(help_text:, tooltip:, &block)
    <range ["help-text=\#{help_text}", "tooltip=\#{tooltip}"]
  end
end
