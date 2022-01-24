module ShoelaceRailsUI
  def sl_details(**args, &block)
    content_tag("sl-details #{args[:details] ? "details=#{args[:details]}" : ""} #{args[:header] ? "header=#{args[:header]}" : ""} #{args[:body] ? "body=#{args[:body]}" : ""} #{args[:summary] ? "summary=#{args[:summary]}" : ""} #{args[:open] ? " open" : ""} #{args[:disabled] ? " disabled" : ""}", &block)
  end
end
