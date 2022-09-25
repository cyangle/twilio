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
  class MessageMessageFeedback
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Json

    # Optional properties

    # The SID of the Account that created the resource
    @[JSON::Field(key: "account_sid", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: account_sid.nil? && !account_sid_present?)]
    getter account_sid : String? = nil

    @[JSON::Field(ignore: true)]
    property? account_sid_present : Bool = false

    # The RFC 2822 date and time in GMT that the resource was created
    @[JSON::Field(key: "date_created", type: Time?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: date_created.nil? && !date_created_present?, converter: Time::RFC2822Converter)]
    getter date_created : Time? = nil

    @[JSON::Field(ignore: true)]
    property? date_created_present : Bool = false

    # The RFC 2822 date and time in GMT that the resource was last updated
    @[JSON::Field(key: "date_updated", type: Time?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: date_updated.nil? && !date_updated_present?, converter: Time::RFC2822Converter)]
    getter date_updated : Time? = nil

    @[JSON::Field(ignore: true)]
    property? date_updated_present : Bool = false

    # The SID of the Message resource for which the feedback was provided
    @[JSON::Field(key: "message_sid", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: message_sid.nil? && !message_sid_present?)]
    getter message_sid : String? = nil

    @[JSON::Field(ignore: true)]
    property? message_sid_present : Bool = false

    # Whether the feedback has arrived
    @[JSON::Field(key: "outcome", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: outcome.nil? && !outcome_present?)]
    getter outcome : String? = nil

    @[JSON::Field(ignore: true)]
    property? outcome_present : Bool = false

    ENUM_VALIDATOR_FOR_OUTCOME = EnumValidator.new("outcome", "String", ["confirmed", "unconfirmed"])

    # The URI of the resource, relative to `https://api.twilio.com`
    @[JSON::Field(key: "uri", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: uri.nil? && !uri_present?)]
    getter uri : String? = nil

    @[JSON::Field(ignore: true)]
    property? uri_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @account_sid : String? = nil,
      @date_created : Time? = nil,
      @date_updated : Time? = nil,
      @message_sid : String? = nil,
      @outcome : String? = nil,
      @uri : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new
      if _account_sid = @account_sid
        if _account_sid.to_s.size > 34
          invalid_properties.push("invalid value for \"account_sid\", the character length must be smaller than or equal to 34.")
        end

        if _account_sid.to_s.size < 34
          invalid_properties.push("invalid value for \"account_sid\", the character length must be great than or equal to 34.")
        end

        pattern = /^AC[0-9a-fA-F]{32}$/
        if _account_sid !~ pattern
          invalid_properties.push("invalid value for \"account_sid\", must conform to the pattern #{pattern}.")
        end
      end
      if _message_sid = @message_sid
        if _message_sid.to_s.size > 34
          invalid_properties.push("invalid value for \"message_sid\", the character length must be smaller than or equal to 34.")
        end

        if _message_sid.to_s.size < 34
          invalid_properties.push("invalid value for \"message_sid\", the character length must be great than or equal to 34.")
        end

        pattern = /^(SM|MM)[0-9a-fA-F]{32}$/
        if _message_sid !~ pattern
          invalid_properties.push("invalid value for \"message_sid\", must conform to the pattern #{pattern}.")
        end
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR_OUTCOME.error_message) unless ENUM_VALIDATOR_FOR_OUTCOME.valid?(@outcome)

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      if _account_sid = @account_sid
        return false if _account_sid.to_s.size > 34
        return false if _account_sid.to_s.size < 34
        return false if _account_sid !~ /^AC[0-9a-fA-F]{32}$/
      end
      if _message_sid = @message_sid
        return false if _message_sid.to_s.size > 34
        return false if _message_sid.to_s.size < 34
        return false if _message_sid !~ /^(SM|MM)[0-9a-fA-F]{32}$/
      end
      return false unless ENUM_VALIDATOR_FOR_OUTCOME.valid?(@outcome)

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] account_sid Object to be assigned
    def account_sid=(account_sid : String?)
      if account_sid.nil?
        return @account_sid = nil
      end
      _account_sid = account_sid.not_nil!
      if _account_sid.to_s.size > 34
        raise ArgumentError.new("invalid value for \"account_sid\", the character length must be smaller than or equal to 34.")
      end

      if _account_sid.to_s.size < 34
        raise ArgumentError.new("invalid value for \"account_sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^AC[0-9a-fA-F]{32}$/
      if _account_sid !~ pattern
        raise ArgumentError.new("invalid value for \"account_sid\", must conform to the pattern #{pattern}.")
      end

      @account_sid = account_sid
    end # Custom attribute writer method checking allowed values (enum).
    # @param [Object] date_created Object to be assigned
    def date_created=(date_created : Time?)
      if date_created.nil?
        return @date_created = nil
      end
      @date_created = date_created
    end # Custom attribute writer method checking allowed values (enum).
    # @param [Object] date_updated Object to be assigned
    def date_updated=(date_updated : Time?)
      if date_updated.nil?
        return @date_updated = nil
      end
      @date_updated = date_updated
    end # Custom attribute writer method checking allowed values (enum).
    # @param [Object] message_sid Object to be assigned
    def message_sid=(message_sid : String?)
      if message_sid.nil?
        return @message_sid = nil
      end
      _message_sid = message_sid.not_nil!
      if _message_sid.to_s.size > 34
        raise ArgumentError.new("invalid value for \"message_sid\", the character length must be smaller than or equal to 34.")
      end

      if _message_sid.to_s.size < 34
        raise ArgumentError.new("invalid value for \"message_sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^(SM|MM)[0-9a-fA-F]{32}$/
      if _message_sid !~ pattern
        raise ArgumentError.new("invalid value for \"message_sid\", must conform to the pattern #{pattern}.")
      end

      @message_sid = message_sid
    end # Custom attribute writer method checking allowed values (enum).
    # @param [Object] outcome Object to be assigned
    def outcome=(outcome : String?)
      if outcome.nil?
        return @outcome = nil
      end
      _outcome = outcome.not_nil!
      ENUM_VALIDATOR_FOR_OUTCOME.valid!(_outcome)
      @outcome = outcome
    end # Custom attribute writer method checking allowed values (enum).
    # @param [Object] uri Object to be assigned
    def uri=(uri : String?)
      if uri.nil?
        return @uri = nil
      end
      @uri = uri
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@account_sid, @account_sid_present, @date_created, @date_created_present, @date_updated, @date_updated_present, @message_sid, @message_sid_present, @outcome, @outcome_present, @uri, @uri_present)
  end
end
