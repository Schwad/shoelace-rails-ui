module ShoelaceRailsUI
  def tag(&block)
    "
    <tag>
      #{block.call}
    </tag>
    "
  end
end
