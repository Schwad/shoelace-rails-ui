module ShoelaceRailsUI
  def sl_icon(name:, src:, label:, &block)
    content_tag(icon name=#{name}, src=#{src}, label=#{label}, yield)
  end
end
