module ShoelaceRailsUI
  def breadcrumb_item(href:, target:, rel:, &block)
    "
    <breadcrumb-item href=#{href}, target=#{target}, rel=#{rel}>
      #{block.call}
    </breadcrumb-item>
    "
  end
end
