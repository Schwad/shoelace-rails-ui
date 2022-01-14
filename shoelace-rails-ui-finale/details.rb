module ShoelaceRailsUI
  def details(summary:, &block)
    <details ["summary=\#{summary}"]
  end
end
