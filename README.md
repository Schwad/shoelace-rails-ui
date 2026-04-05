# Shoelace Rails UI

Use [Shoelace](https://shoelace.style/) web components in Rails with clean, idiomatic ERB helpers. No Node.js, no Webpack, no Yarn -- just Rails.

```erb
<%= sl_alert variant: "warning", open: true, closable: true do %>
  Hello from Shoelace!
<% end %>
```

Renders:

```html
<sl-alert variant="warning" open="open" closable="closable">
  Hello from Shoelace!
</sl-alert>
```

> **Shoelace status:** Shoelace has been rebranded to [Web Awesome](https://webawesome.com/) by its creator. This gem pins to **Shoelace 2.20.1**, the final stable MIT-licensed release. It will continue to work indefinitely -- no further upstream changes to worry about.

---

## Quickstart

```bash
bundle add shoelace-rails-ui
rails generate shoelace:install
```

That's it. The generator wires up the CSS theme and JS imports via importmap. Start using `sl_*` helpers immediately.

## Requirements

- Rails 7.0+
- Importmaps (default Rails 7 setup)
- That's it. No Node, no Yarn, no Webpack, no custom JS or CSS.

---

## Component Helpers

**All 58 Shoelace components** have ERB helpers. Every helper:

- Accepts keyword arguments matching Shoelace attributes
- Converts Ruby underscores to HTML hyphens (`help_text:` becomes `help-text`)
- Handles boolean attributes correctly (`open: true` renders `open="open"`, `open: false` omits it)
- Supports block syntax for nested content

### Examples

```erb
<%# Simple components %>
<%= sl_button variant: "primary", size: "large" do %>
  Click me
<% end %>

<%= sl_badge variant: "success", pill: true do %>
  Online
<% end %>

<%= sl_spinner %>

<%= sl_divider %>

<%# Components without blocks %>
<%= sl_input type: "email", label: "Email", placeholder: "you@example.com",
            required: true, clearable: true, help_text: "We'll never share it" %>

<%= sl_avatar image: "avatar.jpg", label: "User", shape: "circle" %>

<%= sl_progress_bar value: 75, label: "Loading..." %>

<%= sl_rating value: 3, max: 5, readonly: true %>

<%= sl_qr_code value: "https://shoelace.style", size: 200 %>

<%# Nested components %>
<%= sl_details summary: "More info" do %>
  <%= sl_alert variant: "primary", open: true do %>
    Nested Shoelace components work perfectly.
  <% end %>
<% end %>

<%= sl_dialog label: "Confirm" do %>
  Are you sure?
  <%= sl_button variant: "primary" do %>Yes<% end %>
  <%= sl_button variant: "default" do %>Cancel<% end %>
<% end %>

<%= sl_drawer label: "Settings", placement: "end" do %>
  <%= sl_switch name: "notifications", checked: true do %>Notifications<% end %>
  <%= sl_switch name: "sounds" do %>Sounds<% end %>
<% end %>

<%# Tabs %>
<%= sl_tab_group do %>
  <%= sl_tab panel: "general", active: true do %>General<% end %>
  <%= sl_tab panel: "advanced" do %>Advanced<% end %>
  <%= sl_tab_panel name: "general", active: true do %>General settings here<% end %>
  <%= sl_tab_panel name: "advanced" do %>Advanced settings here<% end %>
<% end %>

<%# Trees %>
<%= sl_tree selection: "single" do %>
  <%= sl_tree_item expanded: true do %>
    Documents
    <%= sl_tree_item do %>Resume.pdf<% end %>
    <%= sl_tree_item do %>Cover Letter.pdf<% end %>
  <% end %>
<% end %>

<%# Works great with Hotwire / Turbo %>
<%= turbo_frame_tag :lazy_content, src: lazy_path, loading: :lazy do %>
  <%= sl_spinner %>
<% end %>
```

### Mix and match

You're never forced to use the helpers. Raw Shoelace HTML works alongside ERB helpers, which is great for gradually migrating existing apps:

```erb
<sl-dropdown>
  <sl-button slot="trigger" caret>Dropdown</sl-button>
  <sl-menu>
    <%= sl_menu_item(value: "1") { "Option 1" } %>
    <%= sl_menu_item(value: "2") { "Option 2" } %>
    <sl-divider></sl-divider>
    <sl-menu-item disabled>Disabled</sl-menu-item>
  </sl-menu>
</sl-dropdown>
```

---

## All 58 Components

| Component | Helper | Example |
|-----------|--------|---------|
| Alert | `sl_alert` | `sl_alert variant: "warning", open: true` |
| Animated Image | `sl_animated_image` | `sl_animated_image src: "cat.gif", play: true` |
| Animation | `sl_animation` | `sl_animation name: "bounce", play: true` |
| Avatar | `sl_avatar` | `sl_avatar image: "pic.jpg", shape: "circle"` |
| Badge | `sl_badge` | `sl_badge variant: "success", pill: true` |
| Breadcrumb | `sl_breadcrumb` | `sl_breadcrumb label: "Nav"` |
| Breadcrumb Item | `sl_breadcrumb_item` | `sl_breadcrumb_item href: "/home"` |
| Button | `sl_button` | `sl_button variant: "primary", size: "large"` |
| Button Group | `sl_button_group` | `sl_button_group label: "Actions"` |
| Card | `sl_card` | `sl_card { "Content" }` |
| Carousel | `sl_carousel` | `sl_carousel loop: true, navigation: true` |
| Carousel Item | `sl_carousel_item` | `sl_carousel_item { image_tag("slide.jpg") }` |
| Checkbox | `sl_checkbox` | `sl_checkbox name: "agree", checked: true` |
| Color Picker | `sl_color_picker` | `sl_color_picker value: "#ff0000", inline: true` |
| Copy Button | `sl_copy_button` | `sl_copy_button value: "Copy this text"` |
| Details | `sl_details` | `sl_details summary: "Click to expand"` |
| Dialog | `sl_dialog` | `sl_dialog label: "Confirm", open: true` |
| Divider | `sl_divider` | `sl_divider` or `sl_divider vertical: true` |
| Drawer | `sl_drawer` | `sl_drawer label: "Menu", placement: "start"` |
| Dropdown | `sl_dropdown` | `sl_dropdown placement: "bottom-start"` |
| Format Bytes | `sl_format_bytes` | `sl_format_bytes value: 1024` |
| Format Date | `sl_format_date` | `sl_format_date month: "long", year: "numeric"` |
| Format Number | `sl_format_number` | `sl_format_number value: 1000, type: "currency"` |
| Icon | `sl_icon` | `sl_icon name: "gear", label: "Settings"` |
| Icon Button | `sl_icon_button` | `sl_icon_button name: "pencil", label: "Edit"` |
| Image Comparer | `sl_image_comparer` | `sl_image_comparer position: 50` |
| Include | `sl_include` | `sl_include src: "/snippet.html"` |
| Input | `sl_input` | `sl_input type: "email", label: "Email"` |
| Menu | `sl_menu` | `sl_menu { menu_items }` |
| Menu Item | `sl_menu_item` | `sl_menu_item value: "opt1", checked: true` |
| Menu Label | `sl_menu_label` | `sl_menu_label { "Section" }` |
| Mutation Observer | `sl_mutation_observer` | `sl_mutation_observer attr: "class"` |
| Option | `sl_option` | `sl_option value: "1" { "Choice 1" }` |
| Popup | `sl_popup` | `sl_popup placement: "top", active: true` |
| Progress Bar | `sl_progress_bar` | `sl_progress_bar value: 75` |
| Progress Ring | `sl_progress_ring` | `sl_progress_ring value: 50` |
| QR Code | `sl_qr_code` | `sl_qr_code value: "https://example.com"` |
| Radio | `sl_radio` | `sl_radio value: "a"` |
| Radio Button | `sl_radio_button` | `sl_radio_button value: "b", pill: true` |
| Radio Group | `sl_radio_group` | `sl_radio_group label: "Pick one", name: "choice"` |
| Range | `sl_range` | `sl_range min: 0, max: 100, step: 5` |
| Rating | `sl_rating` | `sl_rating value: 3, max: 5` |
| Relative Time | `sl_relative_time` | `sl_relative_time date: "2024-01-01"` |
| Resize Observer | `sl_resize_observer` | `sl_resize_observer { content }` |
| Select | `sl_select` | `sl_select name: "color", multiple: true` |
| Skeleton | `sl_skeleton` | `sl_skeleton effect: "pulse"` |
| Spinner | `sl_spinner` | `sl_spinner` |
| Split Panel | `sl_split_panel` | `sl_split_panel position: 40, vertical: true` |
| Switch | `sl_switch` | `sl_switch name: "dark_mode", checked: true` |
| Tab | `sl_tab` | `sl_tab panel: "general", active: true` |
| Tab Group | `sl_tab_group` | `sl_tab_group placement: "top"` |
| Tab Panel | `sl_tab_panel` | `sl_tab_panel name: "general", active: true` |
| Tag | `sl_tag` | `sl_tag variant: "primary", pill: true` |
| Textarea | `sl_textarea` | `sl_textarea name: "bio", rows: 4, resize: "auto"` |
| Tooltip | `sl_tooltip` | `sl_tooltip content: "More info", placement: "top"` |
| Tree | `sl_tree` | `sl_tree selection: "single"` |
| Tree Item | `sl_tree_item` | `sl_tree_item expanded: true, selected: true` |
| Visually Hidden | `sl_visually_hidden` | `sl_visually_hidden { "Screen reader only" }` |

Full attribute documentation: [shoelace.style/components](https://shoelace.style/)

---

## Form Helpers

Rails-native form builders that render Shoelace form components, with full model binding, validation, and Turbo support. Originally authored by [@yuki24](https://github.com/yuki24) in [shoelace-rails](https://github.com/yuki24/shoelace-rails) (MIT), bundled and maintained here.

```erb
<%= sl_form_with model: @user do |f| %>
  <%= f.text_field :name %>
  <%= f.email_field :email %>
  <%= f.password_field :password %>
  <%= f.telephone_field :phone %>
  <%= f.url_field :website %>
  <%= f.number_field :age %>
  <%= f.text_area :bio %>
  <%= f.range_field :satisfaction %>
  <%= f.color_field :favorite_color %>
  <%= f.switch_field :notifications %>
  <%= f.check_box :terms %>
  <%= f.select :role, ["Admin", "User", "Guest"] %>
  <%= f.collection_select :team_id, Team.all, :id, :name %>
  <%= f.collection_radio_buttons :plan, Plan.all, :id, :name %>
  <%= f.submit %>
<% end %>
```

### Available form helpers

| Helper | Renders |
|--------|---------|
| `sl_form_with` | `<sl-form>` wrapper around `form_with` |
| `sl_form_for` | `<sl-form>` wrapper around `form_for` |
| `sl_form_tag` | `<sl-form>` wrapper around `form_tag` |
| `sl_turbo_form_with` | Turbo-compatible variant |
| `sl_turbo_form_for` | Turbo-compatible variant |
| `sl_turbo_form_tag` | Turbo-compatible variant |
| `sl_submit_tag` | Submit button |
| `sl_text_field_tag` | Text input |
| `sl_button_tag` | Generic button |

### Form builder fields

Inside `sl_form_with` / `sl_form_for` blocks:

| Method | Shoelace Component |
|--------|-------------------|
| `f.text_field` | `<sl-input type="text">` |
| `f.email_field` | `<sl-input type="email">` |
| `f.password_field` | `<sl-input type="password">` |
| `f.number_field` | `<sl-input type="number">` |
| `f.search_field` | `<sl-input type="search">` |
| `f.telephone_field` | `<sl-input type="tel">` |
| `f.url_field` | `<sl-input type="url">` |
| `f.text_area` | `<sl-textarea>` |
| `f.check_box` | `<sl-checkbox>` |
| `f.select` | `<sl-select>` with `<sl-menu-item>` options |
| `f.collection_select` | `<sl-select>` from a collection |
| `f.collection_radio_buttons` | `<sl-radio-group>` with `<sl-radio>` |
| `f.color_field` / `f.color_picker` | `<sl-color-picker>` |
| `f.range_field` / `f.range` | `<sl-range>` |
| `f.switch_field` / `f.switch` | `<sl-switch>` |
| `f.submit` | `<sl-button type="primary" submit>` |

Model validations automatically set `invalid` on fields with errors.

---

## How It Works

Each component helper is auto-generated from the [Shoelace 2.20.1 custom-elements manifest](https://cdn.jsdelivr.net/npm/@shoelace-style/shoelace@2.20.1/dist/custom-elements.json). The generator (`regenerate_v2.rb`) produces clean Ruby modules that use Rails' `content_tag` properly:

```ruby
# Auto-generated: lib/shoelace-rails-ui-codegen/alert.rb
module ShoelaceRailsUI
  BOOLEANS_ALERT = Set.new([:open, :closable]).freeze

  def sl_alert(**args, &block)
    _sl_render("sl-alert", args, BOOLEANS_ALERT, &block)
  end
end
```

The shared `_sl_render` method handles attribute serialization, boolean handling, and underscore-to-hyphen conversion for all 58 components.

To regenerate after modifying component definitions:

```bash
ruby regenerate_v2.rb
```

---

## Architecture

```
shoelace-rails-ui/
  app/
    assets/
      stylesheets/sl_styles_light.css   # Shoelace 2.20.1 light theme (484 CSS custom properties)
      icons/                             # 1,522 bundled SVG icons
    helpers/
      application_helper.rb              # Includes ShoelaceRailsUI module
      form_helper.rb                     # Rails form builders (forked from shoelace-rails)
  lib/
    shoelace-rails-ui-codegen/
      _base.rb                           # Shared _sl_render method
      alert.rb ... visually_hidden.rb    # 58 auto-generated component helpers
    codegen.rb                           # Loader (requires all component files)
    generators/shoelace/
      install_generator.rb               # `rails g shoelace:install`
  regenerate_v2.rb                       # Code generator script
```

---

## Development

```bash
git clone https://github.com/schwad/shoelace-rails-ui
cd shoelace-rails-ui
bundle install
bundle exec ruby -Itest test/helpers/application_helper_test.rb test/shoelace/rails/ui_test.rb
```

### Test coverage

65 tests with 635 assertions covering all 58 components, boolean/value attribute handling, underscore-to-hyphen conversion, block/no-block rendering modes, and nil/false attribute omission.

---

## Shoelace Version

This gem tracks **Shoelace 2.20.1**, the final MIT-licensed release before the project was rebranded to [Web Awesome](https://webawesome.com/) (commercial). The [shoelace-style/shoelace](https://github.com/shoelace-style/shoelace) GitHub repo is now archived.

Shoelace 2.20.1 includes 58 production-ready web components with full accessibility, theming, and framework-agnostic design. It's a stable foundation that won't have breaking changes.

## Contributing

Contributions welcome! Some ideas:

- Dark theme CSS support
- Icon rendering helpers
- Auto-generated documentation site
- Additional test coverage for form helpers
- Web Awesome migration path (if licensing allows)

## Credits

- [Shoelace](https://shoelace.style/) by [Cory LaViska](https://github.com/claviska)
- Form helpers originally by [@yuki24](https://github.com/yuki24) in [shoelace-rails](https://github.com/yuki24/shoelace-rails) (MIT)
- Component codegen powered by the Shoelace [custom-elements manifest](https://cdn.jsdelivr.net/npm/@shoelace-style/shoelace@2.20.1/dist/custom-elements.json)

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
