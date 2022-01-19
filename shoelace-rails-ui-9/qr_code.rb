module ShoelaceRailsUI
  def sl_qr_code(error_correction:)
    content_tag("sl-qr-code error-correction=#{error_correction}", yield)
  end
end
