module ShoelaceRailsUI
  def sl_progress_bar(label:, lang:)
    content_tag("sl-progress-bar label=#{label}, lang=#{lang}", yield)
  end
end
