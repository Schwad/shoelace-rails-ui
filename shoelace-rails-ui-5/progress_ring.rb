module ShoelaceRailsUI
  def sl_progress_ring(label:, lang:, &block)
    content_tag(progress-ring label=#{label}, lang=#{lang}, yield)
  end
end
