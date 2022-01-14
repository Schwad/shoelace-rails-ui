module ShoelaceRailsUI
  def spinner(, &block)
    "
    <spinner >
      #{block.call}
    </spinner>
    "
  end
end
