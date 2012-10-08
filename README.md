# jQuery colorpicker for Rails

This gem embedes the jQuery colorpicker plugin miniColors in the Rails asset pipeline.

See https://github.com/claviska/jquery-miniColors

## Installation

Add to `Gemfile` run `bundle install`:

```ruby
# Gemfile
gem 'jquery-minicolors-rails'
```

Add to `app/assets/javascripts/application.js`:

```javascript
//= require jquery # Not included
//= require jquery-minicolors
```

Add to `app/assets/stylesheets/application.css`:

```css
/*
 *= require jquery-minicolors
 */
```

# Usage

Just call `miniColors()` with any text-input selector:

```coffeescript
jQuery ->
  $('input[type=text]').miniColors();
```

# With SimpleForm

See https://github.com/plataformatec/simple_form

```erb
<%# app/views/balloons/_form.html.erb %>

<%= simple_form_for @balloon do |f| %>
  <%= f.input :color, as: :minicolors %>
<% end %>
```

Add to `app/assets/javascripts/application.js`:

```javascript
//= require jquery # Not included
//= require jquery-minicolors
//= require jquery-minicolors-simple_form
```

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
