module ShoelaceRailsUI
  def details(summary:, &block)
    "
    <details summary=#{summary}>
      #{block.call}
    </details>
    "
  end
end
