module ShoelaceRailsUI
  def avatar(image:, label:, initials:, &block)
    "
    <avatar image=#{image}, label=#{label}, initials=#{initials}>
      #{block.call}
    </avatar>
    "
  end
end
