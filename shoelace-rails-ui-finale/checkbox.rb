module ShoelaceRailsUI
  def checkbox(name:, value:, &block)
    <checkbox ["name=\#{name}", "value=\#{value}"]
  end
end
