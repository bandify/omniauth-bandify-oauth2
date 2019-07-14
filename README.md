# OmniAuth Bandify

This gem contains the Bandify strategy for OmniAuth.

## Installation

Add this line to your application's Gemfile:

```ruby
    gem 'omniauth-bandify-oauth2', :git => 'https://github.com/Bandify/omniauth-bandify-oauth2.git'
```

And then execute:

```sh
    $ bundle
```


## Usage

### Rails

If you're using Rails, you need to add the strategy to your `Gemfile`:

```ruby
    gem 'omniauth-bandify-oauth2'
```

Once you've added the gem to your project, you need to add the following to your `config/initializers/omniauth.rb`:

```ruby
    Rails.application.config.middleware.use OmniAuth::Builder do
      provider :bandify_oauth2, "client_id", "client_secret"
    end
```

Enter your `client_id` and `client_secret`, which you receive when you register your application with Bandify.

Now just follow the README at: https://github.com/intridea/omniauth

### Sinatra

```ruby
require 'omniauth'
require 'omniauth-bandify-oauth2'

use Rack::Session::Cookie
use OmniAuth::Builder do
  provider :bandify_oauth2, "client_id", "client_secret"
end

get '/auth/:provider/callback' do
  # Do something with auth_hash
  redirect to('/')
end

def auth_hash
  request.env['omniauth.auth']
end
```
