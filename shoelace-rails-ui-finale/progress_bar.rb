module ShoelaceRailsUI
  def progress_bar(label:, lang:, &block)
    <progress-bar ["label=\#{label}", "lang=\#{lang}"]
  end
end
