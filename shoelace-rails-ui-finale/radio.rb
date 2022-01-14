module ShoelaceRailsUI
  def radio(name:, value:, &block)
    <radio ["name=\#{name}", "value=\#{value}"]
  end
end
