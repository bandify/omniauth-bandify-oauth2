require 'multi_json'
require 'omniauth/strategies/oauth2'

module OmniAuth
  module Strategies
    class BandifyOauth2 < OmniAuth::Strategies::OAuth2
      option :name, 'bandify_oauth2'

      option :client_options, {
        site:              ENV['BANDIFY_OAUTH2_SITE'] || 'https://login.bandify.co',
        request_token_url: '/oauth/request_token',
        authorize_url:     '/oauth/authorize',
        token_url:         '/oauth/token',
      }

      uid { raw_info['uid'] }

      info do
        {
          email: raw_info['email'],
          roles: raw_info['roles'],
        }
      end

      def raw_info
        @raw_info ||= MultiJson.decode(access_token.get('/api/v1/me').body)
      end

      def callback_url
        full_host + script_name + callback_path
      end
    end
  end
end
