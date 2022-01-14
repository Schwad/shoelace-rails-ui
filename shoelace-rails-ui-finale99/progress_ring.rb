module ShoelaceRailsUI
  def progress_ring(label:, lang:, &block)
    "
    <progress-ring label=#{label}, lang=#{lang}>
      #{block.call}
    </progress-ring>
    "
  end
end
