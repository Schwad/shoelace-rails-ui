require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase
  # ── Shared behavior tests ──────────────────────────────────────────────

  test '_sl_render omits nil value attributes' do
    result = h.sl_alert(variant: nil) { 'test' }
    assert_equal '<sl-alert>test</sl-alert>', result
  end

  test '_sl_render omits false boolean attributes' do
    result = h.sl_alert(open: false, closable: false, variant: "info") { 'test' }
    assert_equal '<sl-alert variant="info">test</sl-alert>', result
  end

  test '_sl_render converts underscores to hyphens in attribute names' do
    result = h.sl_input(help_text: "hint", password_toggle: true)
    assert_includes result, 'help-text="hint"'
    assert_includes result, 'password-toggle="password-toggle"'
  end

  test '_sl_render works without a block' do
    result = h.sl_divider(vertical: true)
    assert_equal '<sl-divider vertical="vertical"></sl-divider>', result
  end

  test '_sl_render works with a block' do
    result = h.sl_card { 'content' }
    assert_equal '<sl-card>content</sl-card>', result
  end

  # ── sl-alert ───────────────────────────────────────────────────────────

  test 'sl_alert with booleans and attrs' do
    result = h.sl_alert(open: true, closable: true, variant: "warning", duration: 3000) { 'Alert!' }
    assert_tag result, 'sl-alert', content: 'Alert!'
    assert_attr result, 'open="open"'
    assert_attr result, 'closable="closable"'
    assert_attr result, 'variant="warning"'
    assert_attr result, 'duration="3000"'
  end

  # ── sl-animated-image ──────────────────────────────────────────────────

  test 'sl_animated_image renders' do
    result = h.sl_animated_image(src: "cat.gif", alt: "Cat", play: true)
    assert_tag result, 'sl-animated-image'
    assert_attr result, 'src="cat.gif"'
    assert_attr result, 'alt="Cat"'
    assert_attr result, 'play="play"'
  end

  # ── sl-animation ──────────────────────────────────────────────────────

  test 'sl_animation renders' do
    result = h.sl_animation(name: "bounce", duration: 1000, play: true) { 'Bounce me' }
    assert_tag result, 'sl-animation', content: 'Bounce me'
    assert_attr result, 'name="bounce"'
    assert_attr result, 'duration="1000"'
    assert_attr result, 'play="play"'
  end

  # ── sl-avatar ──────────────────────────────────────────────────────────

  test 'sl_avatar renders' do
    result = h.sl_avatar(image: "avatar.jpg", label: "User", initials: "NS", shape: "circle")
    assert_tag result, 'sl-avatar'
    assert_attr result, 'image="avatar.jpg"'
    assert_attr result, 'label="User"'
    assert_attr result, 'initials="NS"'
    assert_attr result, 'shape="circle"'
  end

  # ── sl-badge ───────────────────────────────────────────────────────────

  test 'sl_badge renders' do
    result = h.sl_badge(variant: "success", pill: true, pulse: true) { '9' }
    assert_tag result, 'sl-badge', content: '9'
    assert_attr result, 'variant="success"'
    assert_attr result, 'pill="pill"'
    assert_attr result, 'pulse="pulse"'
  end

  # ── sl-breadcrumb ──────────────────────────────────────────────────────

  test 'sl_breadcrumb renders' do
    result = h.sl_breadcrumb(label: "Navigation") { 'items' }
    assert_tag result, 'sl-breadcrumb', content: 'items'
    assert_attr result, 'label="Navigation"'
  end

  # ── sl-breadcrumb-item ─────────────────────────────────────────────────

  test 'sl_breadcrumb_item renders' do
    result = h.sl_breadcrumb_item(href: "/home", target: "_blank", rel: "noopener") { 'Home' }
    assert_tag result, 'sl-breadcrumb-item', content: 'Home'
    assert_attr result, 'href="/home"'
    assert_attr result, 'target="_blank"'
    assert_attr result, 'rel="noopener"'
  end

  # ── sl-button ──────────────────────────────────────────────────────────

  test 'sl_button renders with all attr types' do
    result = h.sl_button(variant: "primary", size: "large", disabled: true, pill: true, href: "/go") { 'Go' }
    assert_tag result, 'sl-button', content: 'Go'
    assert_attr result, 'variant="primary"'
    assert_attr result, 'size="large"'
    assert_attr result, 'disabled="disabled"'
    assert_attr result, 'pill="pill"'
    assert_attr result, 'href="/go"'
  end

  test 'sl_button boolean false omitted' do
    result = h.sl_button(disabled: false) { 'Click' }
    refute_includes result, 'disabled'
  end

  # ── sl-button-group ────────────────────────────────────────────────────

  test 'sl_button_group renders' do
    result = h.sl_button_group(label: "Actions") { 'buttons' }
    assert_tag result, 'sl-button-group', content: 'buttons'
    assert_attr result, 'label="Actions"'
  end

  # ── sl-card ────────────────────────────────────────────────────────────

  test 'sl_card renders with no attributes' do
    result = h.sl_card { 'Card content' }
    assert_equal '<sl-card>Card content</sl-card>', result
  end

  # ── sl-carousel ────────────────────────────────────────────────────────

  test 'sl_carousel renders' do
    result = h.sl_carousel(loop: true, navigation: true, pagination: true, orientation: "horizontal") { 'slides' }
    assert_tag result, 'sl-carousel', content: 'slides'
    assert_attr result, 'loop="loop"'
    assert_attr result, 'navigation="navigation"'
    assert_attr result, 'pagination="pagination"'
    assert_attr result, 'orientation="horizontal"'
  end

  # ── sl-carousel-item ───────────────────────────────────────────────────

  test 'sl_carousel_item renders' do
    result = h.sl_carousel_item { '<img src="slide.jpg">' }
    assert_tag result, 'sl-carousel-item'
  end

  # ── sl-checkbox ────────────────────────────────────────────────────────

  test 'sl_checkbox renders' do
    result = h.sl_checkbox(name: "agree", value: "yes", checked: true, required: true, help_text: "Required") { 'I agree' }
    assert_tag result, 'sl-checkbox', content: 'I agree'
    assert_attr result, 'name="agree"'
    assert_attr result, 'value="yes"'
    assert_attr result, 'checked="checked"'
    assert_attr result, 'required="required"'
    assert_attr result, 'help-text="Required"'
  end

  # ── sl-color-picker ────────────────────────────────────────────────────

  test 'sl_color_picker renders' do
    result = h.sl_color_picker(value: "#ff0000", format: "hex", inline: true, opacity: true)
    assert_tag result, 'sl-color-picker'
    assert_attr result, 'value="#ff0000"'
    assert_attr result, 'format="hex"'
    assert_attr result, 'inline="inline"'
    assert_attr result, 'opacity="opacity"'
  end

  # ── sl-copy-button ─────────────────────────────────────────────────────

  test 'sl_copy_button renders' do
    result = h.sl_copy_button(value: "Copy me", copy_label: "Copy", success_label: "Copied!", disabled: false)
    assert_tag result, 'sl-copy-button'
    assert_attr result, 'value="Copy me"'
    assert_attr result, 'copy-label="Copy"'
    assert_attr result, 'success-label="Copied!"'
    refute_includes result, 'disabled'
  end

  # ── sl-details ─────────────────────────────────────────────────────────

  test 'sl_details renders' do
    result = h.sl_details(summary: "Click to expand", open: true, disabled: false) { 'Hidden content' }
    assert_tag result, 'sl-details', content: 'Hidden content'
    assert_attr result, 'summary="Click to expand"'
    assert_attr result, 'open="open"'
    refute_includes result, 'disabled'
  end

  # ── sl-dialog ──────────────────────────────────────────────────────────

  test 'sl_dialog renders' do
    result = h.sl_dialog(label: "Confirm", open: true, no_header: false) { 'Are you sure?' }
    assert_tag result, 'sl-dialog', content: 'Are you sure?'
    assert_attr result, 'label="Confirm"'
    assert_attr result, 'open="open"'
    refute_includes result, 'no-header'
  end

  # ── sl-divider ─────────────────────────────────────────────────────────

  test 'sl_divider renders' do
    result = h.sl_divider(vertical: true)
    assert_tag result, 'sl-divider'
    assert_attr result, 'vertical="vertical"'
  end

  test 'sl_divider renders without attributes' do
    result = h.sl_divider
    assert_equal '<sl-divider></sl-divider>', result
  end

  # ── sl-drawer ──────────────────────────────────────────────────────────

  test 'sl_drawer renders' do
    result = h.sl_drawer(label: "Settings", placement: "end", open: true, contained: true) { 'Drawer content' }
    assert_tag result, 'sl-drawer', content: 'Drawer content'
    assert_attr result, 'label="Settings"'
    assert_attr result, 'placement="end"'
    assert_attr result, 'open="open"'
    assert_attr result, 'contained="contained"'
  end

  # ── sl-dropdown ────────────────────────────────────────────────────────

  test 'sl_dropdown renders' do
    result = h.sl_dropdown(placement: "bottom-start", open: true, hoist: true, distance: 10) { 'menu' }
    assert_tag result, 'sl-dropdown', content: 'menu'
    assert_attr result, 'placement="bottom-start"'
    assert_attr result, 'open="open"'
    assert_attr result, 'hoist="hoist"'
    assert_attr result, 'distance="10"'
  end

  # ── sl-format-bytes ────────────────────────────────────────────────────

  test 'sl_format_bytes renders' do
    result = h.sl_format_bytes(value: 1024, unit: "byte", display: "short")
    assert_tag result, 'sl-format-bytes'
    assert_attr result, 'value="1024"'
    assert_attr result, 'unit="byte"'
    assert_attr result, 'display="short"'
  end

  # ── sl-format-date ─────────────────────────────────────────────────────

  test 'sl_format_date renders' do
    result = h.sl_format_date(weekday: "long", year: "numeric", month: "long", day: "numeric", hour_format: "12")
    assert_tag result, 'sl-format-date'
    assert_attr result, 'weekday="long"'
    assert_attr result, 'year="numeric"'
    assert_attr result, 'month="long"'
    assert_attr result, 'hour-format="12"'
  end

  # ── sl-format-number ───────────────────────────────────────────────────

  test 'sl_format_number renders' do
    result = h.sl_format_number(value: 1234.56, type: "currency", currency: "USD", no_grouping: true)
    assert_tag result, 'sl-format-number'
    assert_attr result, 'value="1234.56"'
    assert_attr result, 'type="currency"'
    assert_attr result, 'currency="USD"'
    assert_attr result, 'no-grouping="no-grouping"'
  end

  # ── sl-icon ────────────────────────────────────────────────────────────

  test 'sl_icon renders' do
    result = h.sl_icon(name: "gear", library: "default", label: "Settings")
    assert_tag result, 'sl-icon'
    assert_attr result, 'name="gear"'
    assert_attr result, 'library="default"'
    assert_attr result, 'label="Settings"'
  end

  # ── sl-icon-button ─────────────────────────────────────────────────────

  test 'sl_icon_button renders' do
    result = h.sl_icon_button(name: "pencil", label: "Edit", href: "/edit", disabled: true)
    assert_tag result, 'sl-icon-button'
    assert_attr result, 'name="pencil"'
    assert_attr result, 'label="Edit"'
    assert_attr result, 'href="/edit"'
    assert_attr result, 'disabled="disabled"'
  end

  # ── sl-image-comparer ──────────────────────────────────────────────────

  test 'sl_image_comparer renders' do
    result = h.sl_image_comparer(position: 50) { 'images' }
    assert_tag result, 'sl-image-comparer', content: 'images'
    assert_attr result, 'position="50"'
  end

  # ── sl-include ─────────────────────────────────────────────────────────

  test 'sl_include renders' do
    result = h.sl_include(src: "/snippet.html", mode: "cors", allow_scripts: true)
    assert_tag result, 'sl-include'
    assert_attr result, 'src="/snippet.html"'
    assert_attr result, 'mode="cors"'
    assert_attr result, 'allow-scripts="allow-scripts"'
  end

  # ── sl-input ───────────────────────────────────────────────────────────

  test 'sl_input renders with full attributes' do
    result = h.sl_input(type: "email", name: "email", label: "Email", placeholder: "you@example.com",
                        required: true, clearable: true, help_text: "Enter your email")
    assert_tag result, 'sl-input'
    assert_attr result, 'type="email"'
    assert_attr result, 'name="email"'
    assert_attr result, 'label="Email"'
    assert_attr result, 'placeholder="you@example.com"'
    assert_attr result, 'required="required"'
    assert_attr result, 'clearable="clearable"'
    assert_attr result, 'help-text="Enter your email"'
  end

  # ── sl-menu ────────────────────────────────────────────────────────────

  test 'sl_menu renders' do
    result = h.sl_menu { 'menu items' }
    assert_equal '<sl-menu>menu items</sl-menu>', result
  end

  # ── sl-menu-item ───────────────────────────────────────────────────────

  test 'sl_menu_item renders' do
    result = h.sl_menu_item(type: "checkbox", value: "opt1", checked: true, disabled: false) { 'Option 1' }
    assert_tag result, 'sl-menu-item', content: 'Option 1'
    assert_attr result, 'type="checkbox"'
    assert_attr result, 'value="opt1"'
    assert_attr result, 'checked="checked"'
    refute_includes result, 'disabled'
  end

  # ── sl-menu-label ──────────────────────────────────────────────────────

  test 'sl_menu_label renders' do
    result = h.sl_menu_label { 'Section' }
    assert_equal '<sl-menu-label>Section</sl-menu-label>', result
  end

  # ── sl-mutation-observer ───────────────────────────────────────────────

  test 'sl_mutation_observer renders' do
    result = h.sl_mutation_observer(attr: "class", child_list: true, disabled: false) { 'observed' }
    assert_tag result, 'sl-mutation-observer', content: 'observed'
    assert_attr result, 'attr="class"'
    assert_attr result, 'child-list="child-list"'
  end

  # ── sl-option ──────────────────────────────────────────────────────────

  test 'sl_option renders' do
    result = h.sl_option(value: "1", disabled: false) { 'Option 1' }
    assert_tag result, 'sl-option', content: 'Option 1'
    assert_attr result, 'value="1"'
    refute_includes result, 'disabled'
  end

  # ── sl-popup ───────────────────────────────────────────────────────────

  test 'sl_popup renders' do
    result = h.sl_popup(placement: "top", active: true, arrow: true, distance: 8) { 'popup content' }
    assert_tag result, 'sl-popup', content: 'popup content'
    assert_attr result, 'placement="top"'
    assert_attr result, 'active="active"'
    assert_attr result, 'arrow="arrow"'
    assert_attr result, 'distance="8"'
  end

  # ── sl-progress-bar ────────────────────────────────────────────────────

  test 'sl_progress_bar renders' do
    result = h.sl_progress_bar(value: 75, label: "Loading...", indeterminate: false)
    assert_tag result, 'sl-progress-bar'
    assert_attr result, 'value="75"'
    assert_attr result, 'label="Loading..."'
    refute_includes result, 'indeterminate'
  end

  # ── sl-progress-ring ───────────────────────────────────────────────────

  test 'sl_progress_ring renders' do
    result = h.sl_progress_ring(value: 50, label: "50%")
    assert_tag result, 'sl-progress-ring'
    assert_attr result, 'value="50"'
    assert_attr result, 'label="50%"'
  end

  # ── sl-qr-code ─────────────────────────────────────────────────────────

  test 'sl_qr_code renders' do
    result = h.sl_qr_code(value: "https://example.com", size: 200, fill: "black", radius: 0.5, error_correction: "H")
    assert_tag result, 'sl-qr-code'
    assert_attr result, 'value="https://example.com"'
    assert_attr result, 'size="200"'
    assert_attr result, 'fill="black"'
    assert_attr result, 'error-correction="H"'
  end

  # ── sl-radio ───────────────────────────────────────────────────────────

  test 'sl_radio renders' do
    result = h.sl_radio(value: "a", size: "medium", disabled: true) { 'Option A' }
    assert_tag result, 'sl-radio', content: 'Option A'
    assert_attr result, 'value="a"'
    assert_attr result, 'size="medium"'
    assert_attr result, 'disabled="disabled"'
  end

  # ── sl-radio-button ────────────────────────────────────────────────────

  test 'sl_radio_button codegen helper exists and renders' do
    # Note: FormHelper also defines sl_radio_button(object_name, method, tag_value, options)
    # which shadows the codegen helper in the controller helpers proxy.
    # Verify the codegen method exists in ShoelaceRailsUI module directly.
    assert ShoelaceRailsUI.instance_method(:sl_radio_button), "sl_radio_button should be defined in ShoelaceRailsUI"

    # Test via the module directly using a minimal test harness
    klass = Class.new do
      include ShoelaceRailsUI
      include ActionView::Helpers::TagHelper
      attr_accessor :output_buffer
    end
    helper = klass.new
    result = helper.sl_radio_button(value: "b", size: "small", pill: true)
    assert_includes result, '<sl-radio-button'
    assert_includes result, 'value="b"'
    assert_includes result, 'size="small"'
    assert_includes result, 'pill="pill"'
  end

  # ── sl-radio-group ─────────────────────────────────────────────────────

  test 'sl_radio_group renders' do
    result = h.sl_radio_group(label: "Pick one", name: "choice", value: "a", required: true, help_text: "Choose") { 'radios' }
    assert_tag result, 'sl-radio-group', content: 'radios'
    assert_attr result, 'label="Pick one"'
    assert_attr result, 'name="choice"'
    assert_attr result, 'required="required"'
    assert_attr result, 'help-text="Choose"'
  end

  # ── sl-range ───────────────────────────────────────────────────────────

  test 'sl_range renders' do
    result = h.sl_range(name: "volume", min: 0, max: 100, step: 5, value: 50, label: "Volume", disabled: false)
    assert_tag result, 'sl-range'
    assert_attr result, 'name="volume"'
    assert_attr result, 'min="0"'
    assert_attr result, 'max="100"'
    assert_attr result, 'step="5"'
    assert_attr result, 'label="Volume"'
  end

  # ── sl-rating ──────────────────────────────────────────────────────────

  test 'sl_rating renders' do
    result = h.sl_rating(label: "Stars", value: 3, max: 5, precision: 0.5, readonly: true)
    assert_tag result, 'sl-rating'
    assert_attr result, 'label="Stars"'
    assert_attr result, 'value="3"'
    assert_attr result, 'max="5"'
    assert_attr result, 'readonly="readonly"'
  end

  # ── sl-relative-time ───────────────────────────────────────────────────

  test 'sl_relative_time renders' do
    result = h.sl_relative_time(date: "2024-01-01", format: "long", numeric: "auto", sync: true)
    assert_tag result, 'sl-relative-time'
    assert_attr result, 'date="2024-01-01"'
    assert_attr result, 'format="long"'
    assert_attr result, 'sync="sync"'
  end

  # ── sl-resize-observer ─────────────────────────────────────────────────

  test 'sl_resize_observer renders' do
    result = h.sl_resize_observer(disabled: false) { 'content' }
    assert_tag result, 'sl-resize-observer', content: 'content'
    refute_includes result, 'disabled'
  end

  # ── sl-select ──────────────────────────────────────────────────────────

  test 'sl_select renders' do
    result = h.sl_select(name: "color", label: "Color", placeholder: "Choose...", multiple: true,
                         clearable: true, hoist: true, help_text: "Pick colors") { 'options' }
    assert_tag result, 'sl-select', content: 'options'
    assert_attr result, 'name="color"'
    assert_attr result, 'label="Color"'
    assert_attr result, 'multiple="multiple"'
    assert_attr result, 'clearable="clearable"'
    assert_attr result, 'hoist="hoist"'
    assert_attr result, 'help-text="Pick colors"'
  end

  # ── sl-skeleton ────────────────────────────────────────────────────────

  test 'sl_skeleton renders' do
    result = h.sl_skeleton(effect: "pulse")
    assert_tag result, 'sl-skeleton'
    assert_attr result, 'effect="pulse"'
  end

  # ── sl-spinner ─────────────────────────────────────────────────────────

  test 'sl_spinner renders' do
    result = h.sl_spinner
    assert_equal '<sl-spinner></sl-spinner>', result
  end

  # ── sl-split-panel ─────────────────────────────────────────────────────

  test 'sl_split_panel renders' do
    result = h.sl_split_panel(position: 40, vertical: true, disabled: false, snap: "50%") { 'panels' }
    assert_tag result, 'sl-split-panel', content: 'panels'
    assert_attr result, 'position="40"'
    assert_attr result, 'vertical="vertical"'
    assert_attr result, 'snap="50%"'
  end

  # ── sl-switch ──────────────────────────────────────────────────────────

  test 'sl_switch renders' do
    result = h.sl_switch(name: "notifications", checked: true, size: "large", help_text: "Toggle") { 'Notifications' }
    assert_tag result, 'sl-switch', content: 'Notifications'
    assert_attr result, 'name="notifications"'
    assert_attr result, 'checked="checked"'
    assert_attr result, 'size="large"'
    assert_attr result, 'help-text="Toggle"'
  end

  # ── sl-tab ─────────────────────────────────────────────────────────────

  test 'sl_tab renders' do
    result = h.sl_tab(panel: "general", active: true, closable: true, disabled: false) { 'General' }
    assert_tag result, 'sl-tab', content: 'General'
    assert_attr result, 'panel="general"'
    assert_attr result, 'active="active"'
    assert_attr result, 'closable="closable"'
  end

  # ── sl-tab-group ───────────────────────────────────────────────────────

  test 'sl_tab_group renders' do
    result = h.sl_tab_group(placement: "top", activation: "auto", no_scroll_controls: true) { 'tabs' }
    assert_tag result, 'sl-tab-group', content: 'tabs'
    assert_attr result, 'placement="top"'
    assert_attr result, 'activation="auto"'
    assert_attr result, 'no-scroll-controls="no-scroll-controls"'
  end

  # ── sl-tab-panel ───────────────────────────────────────────────────────

  test 'sl_tab_panel renders' do
    result = h.sl_tab_panel(name: "general", active: true) { 'Panel content' }
    assert_tag result, 'sl-tab-panel', content: 'Panel content'
    assert_attr result, 'name="general"'
    assert_attr result, 'active="active"'
  end

  # ── sl-tag ─────────────────────────────────────────────────────────────

  test 'sl_tag renders' do
    result = h.sl_tag(variant: "primary", size: "medium", pill: true, removable: true) { 'Ruby' }
    assert_tag result, 'sl-tag', content: 'Ruby'
    assert_attr result, 'variant="primary"'
    assert_attr result, 'size="medium"'
    assert_attr result, 'pill="pill"'
    assert_attr result, 'removable="removable"'
  end

  # ── sl-textarea ────────────────────────────────────────────────────────

  test 'sl_textarea renders' do
    result = h.sl_textarea(name: "bio", label: "Bio", placeholder: "Tell us...", rows: 4,
                           resize: "auto", required: true, help_text: "Max 500 chars")
    assert_tag result, 'sl-textarea'
    assert_attr result, 'name="bio"'
    assert_attr result, 'label="Bio"'
    assert_attr result, 'rows="4"'
    assert_attr result, 'resize="auto"'
    assert_attr result, 'required="required"'
    assert_attr result, 'help-text="Max 500 chars"'
  end

  # ── sl-tooltip ─────────────────────────────────────────────────────────

  test 'sl_tooltip renders' do
    result = h.sl_tooltip(content: "More info", placement: "top", distance: 8, open: true, hoist: true) { 'Hover me' }
    assert_tag result, 'sl-tooltip', content: 'Hover me'
    assert_attr result, 'content="More info"'
    assert_attr result, 'placement="top"'
    assert_attr result, 'open="open"'
    assert_attr result, 'hoist="hoist"'
  end

  # ── sl-tree ────────────────────────────────────────────────────────────

  test 'sl_tree renders' do
    result = h.sl_tree(selection: "single") { 'tree items' }
    assert_tag result, 'sl-tree', content: 'tree items'
    assert_attr result, 'selection="single"'
  end

  # ── sl-tree-item ───────────────────────────────────────────────────────

  test 'sl_tree_item renders' do
    result = h.sl_tree_item(expanded: true, selected: true, disabled: false, lazy: true) { 'Item' }
    assert_tag result, 'sl-tree-item', content: 'Item'
    assert_attr result, 'expanded="expanded"'
    assert_attr result, 'selected="selected"'
    assert_attr result, 'lazy="lazy"'
    refute_includes result, 'disabled'
  end

  # ── sl-visually-hidden ─────────────────────────────────────────────────

  test 'sl_visually_hidden renders' do
    result = h.sl_visually_hidden { 'Screen reader only' }
    assert_equal '<sl-visually-hidden>Screen reader only</sl-visually-hidden>', result
  end

  private

  # Shorthand for ApplicationController.helpers
  def h
    ApplicationController.helpers
  end

  # Assert the result contains the expected tag with optional content
  def assert_tag(result, tag_name, content: nil)
    assert_includes result, "<#{tag_name}"
    assert_includes result, "</#{tag_name}>"
    assert_includes result, ">#{content}</#{tag_name}>" if content
  end

  # Assert the result includes the given attribute string
  def assert_attr(result, attr_string)
    assert_includes result, attr_string
  end
end
