# frozen_string_literal: true

require 'client-api'

ClientApi.configure do |config|
  # Loading configuration data from 'env.yml'
  env_data = YAML.load_file('config/env.yml')
  config.base_url = env_data[:url]
  # Loading access token data from 'token.yaml'
  token_data = YAML.load_file('token.yaml')
  access_token = token_data['accessToken']
  # Setting HTTP headers for API requests
  config.headers = { 'Content-Type' => env_data[:content_type], 'Authorization' => "Bearer #{access_token}" }
  # Configuration for JSON output
  config.json_output = { 'Dirname' => './output', 'Filename' => 'response' }
  # Timeout configuration in seconds
  config.time_out = 10 # in secs
  # Logger configuration
  config.logger = { 'Dirname' => './logs', 'Filename' => 'test', 'StoreFilesCount' => 2 }
  # Setting up some common resources before each test
  config.before(:each) do
    @api = ClientApi::Api.new
  end
end
