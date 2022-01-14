module ShoelaceRailsUI
  def visually_hidden(, &block)
    "
    <visually-hidden >
      #{block.call}
    </visually-hidden>
    "
  end
end
