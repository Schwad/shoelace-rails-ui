module ShoelaceRailsUI
  def include(src:, mode:, &block)
    <include ["src=\#{src}", "mode=\#{mode}"]
  end
end
