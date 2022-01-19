module ShoelaceRailsUI
  def sl_avatar(image:, label:, initials:)
    content_tag("sl-avatar image=#{image}, label=#{label}, initials=#{initials}", yield)
  end
end