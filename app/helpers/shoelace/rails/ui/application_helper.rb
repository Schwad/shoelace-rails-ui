module Shoelace
  module Rails
    module Ui
      module ApplicationHelper
        def sl_alert(open: false, closable: false, variant: 'primary')
          content_tag "sl-alert#{open ? " open" : ""}#{closable ? " closable" : ""} variant=#{variant}", yield
        end
      end
    end
  end
end