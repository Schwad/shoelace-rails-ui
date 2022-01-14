module ShoelaceRailsUI
  def dropdown(placement:, &block)
    <dropdown ["placement=\#{placement}"]
  end
end
