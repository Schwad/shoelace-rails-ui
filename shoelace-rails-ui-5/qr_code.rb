module ShoelaceRailsUI
  def sl_qr_code(error_correction:, &block)
    content_tag(qr-code error-correction=#{error_correction}, yield)
  end
end
