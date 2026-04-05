require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase
  test 'sl_alert renders clean HTML with attributes' do
    result = ApplicationController.helpers.sl_alert(open: true, variant: "warning") do
      'hai'
    end
    assert_equal '<sl-alert open="open" variant="warning">hai</sl-alert>', result
  end

  test 'sl_alert omits false boolean attributes' do
    result = ApplicationController.helpers.sl_alert(open: false, variant: "primary") do
      'hello'
    end
    assert_equal '<sl-alert variant="primary">hello</sl-alert>', result
  end

  test 'sl_button renders with mixed attrs and booleans' do
    result = ApplicationController.helpers.sl_button(variant: "primary", disabled: true, size: "large") do
      'Click me'
    end
    assert_equal '<sl-button variant="primary" disabled="disabled" size="large">Click me</sl-button>', result
  end

  test 'sl_dialog renders correctly' do
    result = ApplicationController.helpers.sl_dialog(open: true, label: "My Dialog") do
      'Dialog content'
    end
    # Attribute order follows the order they're passed in the method call
    assert_includes result, 'open="open"'
    assert_includes result, 'label="My Dialog"'
    assert_includes result, '>Dialog content</sl-dialog>'
  end

  test 'sl_card renders with no attributes' do
    result = ApplicationController.helpers.sl_card do
      'Card content'
    end
    assert_equal '<sl-card>Card content</sl-card>', result
  end

  test 'sl_input renders with underscore-to-hyphen conversion' do
    result = ApplicationController.helpers.sl_input(help_text: "Enter name", password_toggle: true)
    assert_equal '<sl-input help-text="Enter name" password-toggle="password-toggle"></sl-input>', result
  end

  test 'new components from 2.20.1 are available' do
    result = ApplicationController.helpers.sl_carousel(loop: true, navigation: true) do
      'slides'
    end
    assert_equal '<sl-carousel loop="loop" navigation="navigation">slides</sl-carousel>', result
  end
end