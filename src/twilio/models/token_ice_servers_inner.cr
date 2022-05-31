#  Twilio - Api
#
# This is the public Twilio REST API.
#
# The version of the OpenAPI document: 1.29.1
# Contact: support@twilio.com
# Generated by: https://openapi-generator.tech
#

require "json"
require "time"
require "log"

module Twilio
  @[JSON::Serializable::Options(emit_nulls: true)]
  class TokenIceServersInner
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties
    @[JSON::Field(key: "credential", type: String?, presence: true, ignore_serialize: credential.nil? && !credential_present?)]
    property credential : String?

    @[JSON::Field(ignore: true)]
    property? credential_present : Bool = false

    @[JSON::Field(key: "url", type: String?, presence: true, ignore_serialize: url.nil? && !url_present?)]
    property url : String?

    @[JSON::Field(ignore: true)]
    property? url_present : Bool = false

    @[JSON::Field(key: "urls", type: String?, presence: true, ignore_serialize: urls.nil? && !urls_present?)]
    property urls : String?

    @[JSON::Field(ignore: true)]
    property? urls_present : Bool = false

    @[JSON::Field(key: "username", type: String?, presence: true, ignore_serialize: username.nil? && !username_present?)]
    property username : String?

    @[JSON::Field(ignore: true)]
    property? username_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(*, @credential : String? = nil, @url : String? = nil, @urls : String? = nil, @username : String? = nil)
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.same?(o)
      self.class == o.class &&
        credential == o.credential &&
        url == o.url &&
        urls == o.urls &&
        username == o.username
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [credential, url, urls, username].hash
    end
  end
end
