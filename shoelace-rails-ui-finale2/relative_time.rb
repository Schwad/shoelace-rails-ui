module ShoelaceRailsUI
  def relative_time(date:, lang:, format:, numeric:, &block)
    <relative-time date=#{date}, lang=#{lang}, format=#{format}, numeric=#{numeric}>
      #{block.call}
    </relative-time>
  end
end
