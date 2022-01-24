require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase
  test 'generator spits out expected text' do
    result = ApplicationController.helpers.sl_alert(open: true, variant: "warning") do
      'hai'
    end
    # slightly funky
    assert_equal result, '<sl-alert variant=warning   open >hai</sl-alert variant=warning   open >'
  end
end