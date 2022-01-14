module ShoelaceRailsUI
  def qr_code(error_correction:, &block)
    <qr-code error-correction=#{error_correction}>
      #{block.call}
    </qr-code>
  end
end
