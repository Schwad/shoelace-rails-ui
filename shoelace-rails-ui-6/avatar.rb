module ShoelaceRailsUI
  def sl_avatar(image:, label:, initials:, &block)
    content_tag("avatar image=#{image}, label=#{label}, initials=#{initials}", yield)
  end
end