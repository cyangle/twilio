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
  class CallSiprec
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Json

    # Optional properties

    # The SID of the Account that created this resource
    @[JSON::Field(key: "account_sid", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: account_sid.nil? && !account_sid_present?)]
    getter account_sid : String? = nil

    @[JSON::Field(ignore: true)]
    property? account_sid_present : Bool = false

    # The SID of the Call the resource is associated with
    @[JSON::Field(key: "call_sid", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: call_sid.nil? && !call_sid_present?)]
    getter call_sid : String? = nil

    @[JSON::Field(ignore: true)]
    property? call_sid_present : Bool = false

    # The RFC 2822 date and time in GMT that this resource was last updated
    @[JSON::Field(key: "date_updated", type: Time?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: date_updated.nil? && !date_updated_present?, converter: Time::RFC2822Converter)]
    getter date_updated : Time? = nil

    @[JSON::Field(ignore: true)]
    property? date_updated_present : Bool = false

    # The name of this resource
    @[JSON::Field(key: "name", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: name.nil? && !name_present?)]
    getter name : String? = nil

    @[JSON::Field(ignore: true)]
    property? name_present : Bool = false

    # The SID of the Siprec resource.
    @[JSON::Field(key: "sid", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: sid.nil? && !sid_present?)]
    getter sid : String? = nil

    @[JSON::Field(ignore: true)]
    property? sid_present : Bool = false

    # The status - one of `stopped`, `in-progress`
    @[JSON::Field(key: "status", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: status.nil? && !status_present?)]
    getter status : String? = nil

    @[JSON::Field(ignore: true)]
    property? status_present : Bool = false

    ENUM_VALIDATOR_FOR_STATUS = EnumValidator.new("status", "String", ["in-progress", "stopped"])

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
      @call_sid : String? = nil,
      @date_updated : Time? = nil,
      @name : String? = nil,
      @sid : String? = nil,
      @status : String? = nil,
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
      if _call_sid = @call_sid
        if _call_sid.to_s.size > 34
          invalid_properties.push("invalid value for \"call_sid\", the character length must be smaller than or equal to 34.")
        end

        if _call_sid.to_s.size < 34
          invalid_properties.push("invalid value for \"call_sid\", the character length must be great than or equal to 34.")
        end

        pattern = /^CA[0-9a-fA-F]{32}$/
        if _call_sid !~ pattern
          invalid_properties.push("invalid value for \"call_sid\", must conform to the pattern #{pattern}.")
        end
      end
      if _sid = @sid
        if _sid.to_s.size > 34
          invalid_properties.push("invalid value for \"sid\", the character length must be smaller than or equal to 34.")
        end

        if _sid.to_s.size < 34
          invalid_properties.push("invalid value for \"sid\", the character length must be great than or equal to 34.")
        end

        pattern = /^SR[0-9a-fA-F]{32}$/
        if _sid !~ pattern
          invalid_properties.push("invalid value for \"sid\", must conform to the pattern #{pattern}.")
        end
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR_STATUS.error_message) unless ENUM_VALIDATOR_FOR_STATUS.valid?(@status)

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
      if _call_sid = @call_sid
        return false if _call_sid.to_s.size > 34
        return false if _call_sid.to_s.size < 34
        return false if _call_sid !~ /^CA[0-9a-fA-F]{32}$/
      end
      if _sid = @sid
        return false if _sid.to_s.size > 34
        return false if _sid.to_s.size < 34
        return false if _sid !~ /^SR[0-9a-fA-F]{32}$/
      end
      return false unless ENUM_VALIDATOR_FOR_STATUS.valid?(@status)

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
    # @param [Object] call_sid Object to be assigned
    def call_sid=(call_sid : String?)
      if call_sid.nil?
        return @call_sid = nil
      end
      _call_sid = call_sid.not_nil!
      if _call_sid.to_s.size > 34
        raise ArgumentError.new("invalid value for \"call_sid\", the character length must be smaller than or equal to 34.")
      end

      if _call_sid.to_s.size < 34
        raise ArgumentError.new("invalid value for \"call_sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^CA[0-9a-fA-F]{32}$/
      if _call_sid !~ pattern
        raise ArgumentError.new("invalid value for \"call_sid\", must conform to the pattern #{pattern}.")
      end

      @call_sid = call_sid
    end # Custom attribute writer method checking allowed values (enum).
    # @param [Object] date_updated Object to be assigned
    def date_updated=(date_updated : Time?)
      if date_updated.nil?
        return @date_updated = nil
      end
      @date_updated = date_updated
    end # Custom attribute writer method checking allowed values (enum).
    # @param [Object] name Object to be assigned
    def name=(name : String?)
      if name.nil?
        return @name = nil
      end
      @name = name
    end # Custom attribute writer method checking allowed values (enum).
    # @param [Object] sid Object to be assigned
    def sid=(sid : String?)
      if sid.nil?
        return @sid = nil
      end
      _sid = sid.not_nil!
      if _sid.to_s.size > 34
        raise ArgumentError.new("invalid value for \"sid\", the character length must be smaller than or equal to 34.")
      end

      if _sid.to_s.size < 34
        raise ArgumentError.new("invalid value for \"sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^SR[0-9a-fA-F]{32}$/
      if _sid !~ pattern
        raise ArgumentError.new("invalid value for \"sid\", must conform to the pattern #{pattern}.")
      end

      @sid = sid
    end # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status : String?)
      if status.nil?
        return @status = nil
      end
      _status = status.not_nil!
      ENUM_VALIDATOR_FOR_STATUS.valid!(_status)
      @status = status
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
    def_equals_and_hash(@account_sid, @account_sid_present, @call_sid, @call_sid_present, @date_updated, @date_updated_present, @name, @name_present, @sid, @sid_present, @status, @status_present, @uri, @uri_present)
  end
end
