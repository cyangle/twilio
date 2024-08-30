#  Twilio - Api
#
# This is the public Twilio REST API.
#
# The version of the OpenAPI document: 1.38.0
# Contact: support@twilio.com
# Generated by: https://openapi-generator.tech
#
# OpenAPI Generator version: 6.3.0-SNAPSHOT

# Dependencies
require "crest"
require "log"
require "json"
require "time"
require "uri"

# Project files
require "./ext/**"
require "./validators/**"
require "./twilio/configuration"
require "./twilio/api_error"
require "./twilio/api_client"

module Twilio
  Log = ::Log.for("Twilio") # => Log for Twilio source

  VERSION = {{ `shards version #{__DIR__}`.chomp.stringify }}

  # Return the default `Configuration` object.
  def self.configure
    Configuration.default
  end

  # Customize default settings for the SDK using block.
  #
  # ```
  # Twilio.configure do |config|
  #   config.username = "xxx"
  #   config.password = "xxx"
  # end
  # ```
  def self.configure(&)
    yield Configuration.default
  end

  # Get next page of a list endpoint response
  #
  # ```
  # api = Twilio::CallsApi.new
  #
  # page : Twilio::ListCallResponse = api.list_call
  #
  # # Get next page of results
  # next_page : Twilio::ListCallResponse? = Twilio.next_page(page)
  #
  # pp page
  # pp next_page
  # ```
  def self.next_page(list_response : T, api_client : Twilio::ApiClient = Twilio::ApiClient.default) : T? forall T
    if next_page_uri = list_response.next_page_uri
      request : Crest::Request = api_client.build_api_request(
        http_method: :GET,
        path: next_page_uri,
        auth_names: ["accountSid_authToken"]
      )
      body, _status_code, _headers = api_client.execute_api_request(request)
      list_response.class.from_json(body)
    else
      nil
    end
  end
end
