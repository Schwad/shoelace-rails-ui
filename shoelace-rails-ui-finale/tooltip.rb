module ShoelaceRailsUI
  def tooltip(placement:, &block)
    <tooltip ["placement=\#{placement}"]
  end
end
