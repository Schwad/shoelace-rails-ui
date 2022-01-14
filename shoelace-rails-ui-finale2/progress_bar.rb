module ShoelaceRailsUI
  def progress_bar(label:, lang:, &block)
    <progress-bar label=#{label}, lang=#{lang}>
      #{block.call}
    </progress-bar>
  end
end
