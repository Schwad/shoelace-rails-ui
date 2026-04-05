require "test_helper"

class Shoelace::Rails::UiTest < ActiveSupport::TestCase
  test "it has a version number" do
    assert Shoelace::Rails::Ui::VERSION
  end

  test "version is 0.2.0" do
    assert_equal "0.2.0", Shoelace::Rails::Ui::VERSION
  end

  test 'sl_alert renders clean HTML' do
    result = ApplicationController.helpers.sl_alert(open: true, variant: "warning") do
      'hai'
    end
    assert_equal '<sl-alert open="open" variant="warning">hai</sl-alert>', result
  end
end
