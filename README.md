# PlaceholderAvatars

Simply display a list of placeholder avatars within your rails app.

## Installation

Add this line to your application's Gemfile:

    gem 'placeholder_avatars'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install placeholder_avatars

## Configuration

This gem depends on the [Twitter](https://github.com/sferik/twitter) gem and assumes that you've configured your oauth credentials already. For example:

    Twitter.configure do |config|
        config.consumer_key = "CONSUMER KEY"
    	config.consumer_secret = "CONSUMER SECRET"
    	config.oauth_token = "OAUTH TOKEN"
    	config.oauth_token_secret = "OAUTH SECRET"
    end

## Usage

By default PlaceholderAvatars will grab 100 twitter avatars that come from the search result: good.

    <% PlaceholderAvatars.fetch.each do |avatar| %>
      <%= image_tag(avatar) %>
    <% end %>

To override the number of avatars (<=100) or the keyword:
    <% PlaceholderAvatars.fetch("evil", 50).each do |avatar| %>
      <%= image_tag(avatar) %>
    <% end %>


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
