module ShoelaceRailsUI
  def sl_rating(**args, &block)
    content_tag("sl-rating #{args[:rating] ? "rating=#{args[:rating]}" : ""} #{args[:value] ? "value=#{args[:value]}" : ""} #{args[:max] ? "max=#{args[:max]}" : ""} #{args[:precision] ? "precision=#{args[:precision]}" : ""} #{args[:getSymbol] ? "getSymbol=#{args[:getSymbol]}" : ""} #{args[:readonly] ? " readonly" : ""} #{args[:disabled] ? " disabled" : ""}", &block)
  end
end
