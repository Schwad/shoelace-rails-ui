module ShoelaceRailsUI
  def sl_progress_bar(label:, lang:, &block)
    content_tag("sl-progress-bar label=#{label}, lang=#{lang}", yield)
  end
end
