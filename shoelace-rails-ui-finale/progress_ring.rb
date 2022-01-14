module ShoelaceRailsUI
  def progress_ring(label:, lang:, &block)
    <progress-ring ["label=\#{label}", "lang=\#{lang}"]
  end
end
