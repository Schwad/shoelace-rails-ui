# Shoelace::Rails::Ui
Get started with [Shoelace]() today, the Rails way!

## Quickstart

1. Add to gemfile and `bundle install`
1. in `config/importmap.rb` add `pin "shoelace", to: "https://cdn.jsdelivr.net/npm/@shoelace-style/shoelace@2.0.0-beta.64/dist/shoelace.js"
`*️⃣
1. in `application.js` add: `import "shoelace"`*️⃣
1. in `application.css` add: `*= require sl_styles_light.css`*️⃣


*️⃣: To be automated into an install command or included explicitly in engine
## Requirements
* Rails 7.0 or greater with defaults (hotwire, importmaps, etc.)

## Not required

* custom javascript
* custom css
* yarn
* webpack
* node


### Kevin Q's/Issues

* Double render on helper?
* Ideas for automating 3-5 in quickstart. Install or in gem?


##################

## Usage
How to use my plugin.

## Installation
Add this line to your application's Gemfile:

```ruby
gem "shoelace-rails-ui"
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install shoelace-rails-ui
```

## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
