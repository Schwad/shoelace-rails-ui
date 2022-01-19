module Shoelace
  module Rails
    module Ui
      module ApplicationHelper
        def hi
          'watnow'
        end

        def sl_alert(status="open")
          content_tag "sl-alert #{status}", yield
        end
      end
    end
  end
end