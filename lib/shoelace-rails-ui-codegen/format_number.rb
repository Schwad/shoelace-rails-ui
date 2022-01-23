module ShoelaceRailsUI
  def sl_format_number(**args)
    content_tag("sl-format-number #{args[:value] ? "value=#{args[:value]}" : ""} #{args[:lang] ? "lang=#{args[:lang]}" : ""} #{args[:type] ? "type=#{args[:type]}" : ""} #{args[:currency] ? "currency=#{args[:currency]}" : ""} #{args[:currencyDisplay] ? "currencyDisplay=#{args[:currencyDisplay]}" : ""} #{args[:minimumIntegerDigits] ? "minimumIntegerDigits=#{args[:minimumIntegerDigits]}" : ""} #{args[:minimumFractionDigits] ? "minimumFractionDigits=#{args[:minimumFractionDigits]}" : ""} #{args[:maximumFractionDigits] ? "maximumFractionDigits=#{args[:maximumFractionDigits]}" : ""} #{args[:minimumSignificantDigits] ? "minimumSignificantDigits=#{args[:minimumSignificantDigits]}" : ""} #{args[:maximumSignificantDigits] ? "maximumSignificantDigits=#{args[:maximumSignificantDigits]}" : ""} #{args[:noGrouping] ? " noGrouping" : ""}", yield)
  end
end
