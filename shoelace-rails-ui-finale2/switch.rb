module ShoelaceRailsUI
  def switch(name:, value:, &block)
    <switch name=#{name}, value=#{value}>
      #{block.call}
    </switch>
  end
end
