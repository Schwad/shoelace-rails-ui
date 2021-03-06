require "test_helper"

class Shoelace::Rails::UiTest < ActiveSupport::TestCase
  test "it has a version number" do
    assert Shoelace::Rails::Ui::VERSION
  end

  test 'generator spits out expected text' do
    result = ApplicationController.helpers.sl_alert(open: true, variant: "warning") do
      'hai'
    end
    # slightly funky
    assert_equal result, '<sl-alert variant=warning   open >hai</sl-alert variant=warning   open >'
  end
end
