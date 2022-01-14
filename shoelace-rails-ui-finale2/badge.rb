module ShoelaceRailsUI
  def badge(, &block)
    <badge >
      #{block.call}
    </badge>
  end
end
