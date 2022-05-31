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
  class MessageMessageFeedback
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties
    # The SID of the Account that created the resource
    @[JSON::Field(key: "account_sid", type: String?, presence: true, ignore_serialize: account_sid.nil? && !account_sid_present?)]
    property account_sid : String?

    @[JSON::Field(ignore: true)]
    property? account_sid_present : Bool = false

    # The RFC 2822 date and time in GMT that the resource was created
    @[JSON::Field(key: "date_created", type: Time?, converter: Time::RFC2822Converter, presence: true, ignore_serialize: date_created.nil? && !date_created_present?)]
    property date_created : Time?

    @[JSON::Field(ignore: true)]
    property? date_created_present : Bool = false

    # The RFC 2822 date and time in GMT that the resource was last updated
    @[JSON::Field(key: "date_updated", type: Time?, converter: Time::RFC2822Converter, presence: true, ignore_serialize: date_updated.nil? && !date_updated_present?)]
    property date_updated : Time?

    @[JSON::Field(ignore: true)]
    property? date_updated_present : Bool = false

    # The SID of the Message resource for which the feedback was provided
    @[JSON::Field(key: "message_sid", type: String?, presence: true, ignore_serialize: message_sid.nil? && !message_sid_present?)]
    property message_sid : String?

    @[JSON::Field(ignore: true)]
    property? message_sid_present : Bool = false

    # Whether the feedback has arrived
    @[JSON::Field(key: "outcome", type: String?, presence: true, ignore_serialize: outcome.nil? && !outcome_present?)]
    property outcome : String?

    @[JSON::Field(ignore: true)]
    property? outcome_present : Bool = false

    # The URI of the resource, relative to `https://api.twilio.com`
    @[JSON::Field(key: "uri", type: String?, presence: true, ignore_serialize: uri.nil? && !uri_present?)]
    property uri : String?

    @[JSON::Field(ignore: true)]
    property? uri_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(*, @account_sid : String? = nil, @date_created : Time? = nil, @date_updated : Time? = nil, @message_sid : String? = nil, @outcome : String? = nil, @uri : String? = nil)
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new
      if !@account_sid.nil? && @account_sid.to_s.size > 34
        invalid_properties.push("invalid value for \"account_sid\", the character length must be smaller than or equal to 34.")
      end

      if !@account_sid.nil? && @account_sid.to_s.size < 34
        invalid_properties.push("invalid value for \"account_sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^AC[0-9a-fA-F]{32}$/
      if !@account_sid.nil? && @account_sid !~ pattern
        invalid_properties.push("invalid value for \"account_sid\", must conform to the pattern #{pattern}.")
      end

      if !@message_sid.nil? && @message_sid.to_s.size > 34
        invalid_properties.push("invalid value for \"message_sid\", the character length must be smaller than or equal to 34.")
      end

      if !@message_sid.nil? && @message_sid.to_s.size < 34
        invalid_properties.push("invalid value for \"message_sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^(SM|MM)[0-9a-fA-F]{32}$/
      if !@message_sid.nil? && @message_sid !~ pattern
        invalid_properties.push("invalid value for \"message_sid\", must conform to the pattern #{pattern}.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@account_sid.nil? && @account_sid.to_s.size > 34
      return false if !@account_sid.nil? && @account_sid.to_s.size < 34
      return false if !@account_sid.nil? && @account_sid !~ /^AC[0-9a-fA-F]{32}$/
      return false if !@message_sid.nil? && @message_sid.to_s.size > 34
      return false if !@message_sid.nil? && @message_sid.to_s.size < 34
      return false if !@message_sid.nil? && @message_sid !~ /^(SM|MM)[0-9a-fA-F]{32}$/
      outcome_validator = EnumValidator.new("String", ["confirmed", "unconfirmed"])
      return false unless outcome_validator.valid?(@outcome)
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] account_sid Value to be assigned
    def account_sid=(account_sid)
      if !account_sid.nil? && account_sid.to_s.size > 34
        raise ArgumentError.new("invalid value for \"account_sid\", the character length must be smaller than or equal to 34.")
      end

      if !account_sid.nil? && account_sid.to_s.size < 34
        raise ArgumentError.new("invalid value for \"account_sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^AC[0-9a-fA-F]{32}$/
      if !account_sid.nil? && account_sid !~ pattern
        raise ArgumentError.new("invalid value for \"account_sid\", must conform to the pattern #{pattern}.")
      end

      @account_sid = account_sid
    end

    # Custom attribute writer method with validation
    # @param [Object] message_sid Value to be assigned
    def message_sid=(message_sid)
      if !message_sid.nil? && message_sid.to_s.size > 34
        raise ArgumentError.new("invalid value for \"message_sid\", the character length must be smaller than or equal to 34.")
      end

      if !message_sid.nil? && message_sid.to_s.size < 34
        raise ArgumentError.new("invalid value for \"message_sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^(SM|MM)[0-9a-fA-F]{32}$/
      if !message_sid.nil? && message_sid !~ pattern
        raise ArgumentError.new("invalid value for \"message_sid\", must conform to the pattern #{pattern}.")
      end

      @message_sid = message_sid
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] outcome Object to be assigned
    def outcome=(outcome)
      validator = EnumValidator.new("String", ["confirmed", "unconfirmed"])
      unless validator.valid?(outcome)
        raise ArgumentError.new("invalid value for \"outcome\", must be one of #{validator.allowable_values}.")
      end
      @outcome = outcome
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.same?(o)
      self.class == o.class &&
        account_sid == o.account_sid &&
        date_created == o.date_created &&
        date_updated == o.date_updated &&
        message_sid == o.message_sid &&
        outcome == o.outcome &&
        uri == o.uri
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [account_sid, date_created, date_updated, message_sid, outcome, uri].hash
    end
  end
end
