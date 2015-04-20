# jQuery colorpicker for Rails

[![Gem Version](https://badge.fury.io/rb/jquery-minicolors-rails.png)](http://badge.fury.io/rb/jquery-minicolors-rails)
[![Build Status](https://travis-ci.org/kostia/jquery-minicolors-rails.png)](https://travis-ci.org/kostia/jquery-minicolors-rails)
[![Code Climate](https://codeclimate.com/github/kostia/jquery-minicolors-rails.png)](https://codeclimate.com/github/kostia/jquery-minicolors-rails)

This gem embeddes the jQuery colorpicker in the Rails asset pipeline.

![Screenshot](https://raw.github.com/kostia/jquery-minicolors-rails/master/screenshot.png)

See http://labs.abeautifulsite.net/jquery-minicolors/

## Installation

Add to `Gemfile` and run `bundle install`:

```ruby
# Gemfile
gem 'jquery-minicolors-rails'
```

Add to `app/assets/javascripts/application.js`:

```javascript
//= require jquery # Not included
//= require jquery.minicolors
```

Add to `app/assets/stylesheets/application.css`:

```css
/*
 *= require jquery.minicolors
 */
```

## Usage

Just call `minicolors()` with any text-input selector:

```coffeescript
# With default options:
$ -> $('input[type=text]').minicolors()

# With Bootstrap theme (Bootstrap-3 is supported):
$ -> $('input[type=text]').minicolors theme: 'bootstrap'
```

### SimpleForm

Add to `app/assets/javascripts/application.js`:

```javascript
//= require jquery # Not included
//= require jquery.minicolors
//= require jquery.minicolors.simple_form
```

See https://github.com/plataformatec/simple_form

```erb
<%# app/views/balloons/_form.html.erb %>

<%# Basic usage: %>
<%= simple_form_for @balloon do |f| %>
  <%= f.input :color, as: :minicolors %>
<% end %>

<%# With Bootstrap theme and swatch on the right: %>
<%= simple_form_for @balloon do |f| %>
  <%= f.input :color, as: :minicolors, input_html: {data: {
          minicolors: {theme: :bootstrap, position: :right}}} %>
<% end %>
```

## Configuration

As of https://github.com/rails/rails/pull/7968 (Rails > 4.*) the asset pipeline precompile command will ignore the images.
Since `jquery.minicolors` uses an image for backgrounds, the image is by default splitted into chunks of data URLs and embedded into the CSS directly.
This results in a slightly bigger compiled CSS (~50k bigger), but avoids unnecessary image request to the server and headache on deployment.
You can still instruct `JqueryMinicolorsRails` to use the original image instead of the data URLs:

```ruby
# config/initializers/jquery_minicolors_rails.rb
JqueryMinicolorsRails.use_data_urls = false
```

Additionally you would also have to copy the image to the deployment target:

```ruby
# config/deploy.rb
after :deploy do
  target = File.join(%W[#{release_path} public assets])
  run "cp -r `cd #{release_path} && bundle show jquery-minicolors-rails`/vendor/assets/images/jquery.minicolors.png #{target}"
end
```

## Testing

```bash
bundle exec rspec
```

## Versioning

[![Gem Version](https://badge.fury.io/rb/jquery-minicolors-rails.png)](http://badge.fury.io/rb/jquery-minicolors-rails)

Gem has the same version as the vendored minicolors library (http://git.io/ZWaGNg)
__plus__ an extra minor version number.

## MIT-License

Copyright 2012 Kostiantyn Kahanskyi

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
