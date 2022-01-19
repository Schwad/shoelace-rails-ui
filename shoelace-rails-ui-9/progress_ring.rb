module ShoelaceRailsUI
  def sl_progress_ring(label:, lang:)
    content_tag("sl-progress-ring label=#{label}, lang=#{lang}", yield)
  end
end
