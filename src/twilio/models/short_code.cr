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
  class ShortCode
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties
    # The SID of the Account that created this resource
    @[JSON::Field(key: "account_sid", type: String?, presence: true, ignore_serialize: account_sid.nil? && !account_sid_present?)]
    getter account_sid : String?

    @[JSON::Field(ignore: true)]
    property? account_sid_present : Bool = false

    # The API version used to start a new TwiML session
    @[JSON::Field(key: "api_version", type: String?, presence: true, ignore_serialize: api_version.nil? && !api_version_present?)]
    property api_version : String?

    @[JSON::Field(ignore: true)]
    property? api_version_present : Bool = false

    # The RFC 2822 date and time in GMT that this resource was created
    @[JSON::Field(key: "date_created", type: Time?, converter: Time::RFC2822Converter, presence: true, ignore_serialize: date_created.nil? && !date_created_present?)]
    property date_created : Time?

    @[JSON::Field(ignore: true)]
    property? date_created_present : Bool = false

    # The RFC 2822 date and time in GMT that this resource was last updated
    @[JSON::Field(key: "date_updated", type: Time?, converter: Time::RFC2822Converter, presence: true, ignore_serialize: date_updated.nil? && !date_updated_present?)]
    property date_updated : Time?

    @[JSON::Field(ignore: true)]
    property? date_updated_present : Bool = false

    # A string that you assigned to describe this resource
    @[JSON::Field(key: "friendly_name", type: String?, presence: true, ignore_serialize: friendly_name.nil? && !friendly_name_present?)]
    property friendly_name : String?

    @[JSON::Field(ignore: true)]
    property? friendly_name_present : Bool = false

    # The short code. e.g., 894546.
    @[JSON::Field(key: "short_code", type: String?, presence: true, ignore_serialize: short_code.nil? && !short_code_present?)]
    property short_code : String?

    @[JSON::Field(ignore: true)]
    property? short_code_present : Bool = false

    # The unique string that identifies this resource
    @[JSON::Field(key: "sid", type: String?, presence: true, ignore_serialize: sid.nil? && !sid_present?)]
    getter sid : String?

    @[JSON::Field(ignore: true)]
    property? sid_present : Bool = false

    # HTTP method we use to call the sms_fallback_url
    @[JSON::Field(key: "sms_fallback_method", type: String?, presence: true, ignore_serialize: sms_fallback_method.nil? && !sms_fallback_method_present?)]
    getter sms_fallback_method : String?

    @[JSON::Field(ignore: true)]
    property? sms_fallback_method_present : Bool = false

    ENUM_VALIDATOR_FOR_SMS_FALLBACK_METHOD = EnumValidator.new("String", ["HEAD", "GET", "POST", "PATCH", "PUT", "DELETE"])

    # URL Twilio will request if an error occurs in executing TwiML
    @[JSON::Field(key: "sms_fallback_url", type: String?, presence: true, ignore_serialize: sms_fallback_url.nil? && !sms_fallback_url_present?)]
    property sms_fallback_url : String?

    @[JSON::Field(ignore: true)]
    property? sms_fallback_url_present : Bool = false

    # HTTP method to use when requesting the sms url
    @[JSON::Field(key: "sms_method", type: String?, presence: true, ignore_serialize: sms_method.nil? && !sms_method_present?)]
    getter sms_method : String?

    @[JSON::Field(ignore: true)]
    property? sms_method_present : Bool = false

    ENUM_VALIDATOR_FOR_SMS_METHOD = EnumValidator.new("String", ["HEAD", "GET", "POST", "PATCH", "PUT", "DELETE"])

    # URL we call when receiving an incoming SMS message to this short code
    @[JSON::Field(key: "sms_url", type: String?, presence: true, ignore_serialize: sms_url.nil? && !sms_url_present?)]
    property sms_url : String?

    @[JSON::Field(ignore: true)]
    property? sms_url_present : Bool = false

    # The URI of this resource, relative to `https://api.twilio.com`
    @[JSON::Field(key: "uri", type: String?, presence: true, ignore_serialize: uri.nil? && !uri_present?)]
    property uri : String?

    @[JSON::Field(ignore: true)]
    property? uri_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(*, @account_sid : String? = nil, @api_version : String? = nil, @date_created : Time? = nil, @date_updated : Time? = nil, @friendly_name : String? = nil, @short_code : String? = nil, @sid : String? = nil, @sms_fallback_method : String? = nil, @sms_fallback_url : String? = nil, @sms_method : String? = nil, @sms_url : String? = nil, @uri : String? = nil)
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

      if !@sid.nil? && @sid.to_s.size > 34
        invalid_properties.push("invalid value for \"sid\", the character length must be smaller than or equal to 34.")
      end

      if !@sid.nil? && @sid.to_s.size < 34
        invalid_properties.push("invalid value for \"sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^SC[0-9a-fA-F]{32}$/
      if !@sid.nil? && @sid !~ pattern
        invalid_properties.push("invalid value for \"sid\", must conform to the pattern #{pattern}.")
      end

      unless ENUM_VALIDATOR_FOR_SMS_FALLBACK_METHOD.valid?(@sms_fallback_method)
        invalid_properties.push("invalid value for \"sms_fallback_method\", must be one of #{ENUM_VALIDATOR_FOR_SMS_FALLBACK_METHOD.allowable_values}.")
      end

      unless ENUM_VALIDATOR_FOR_SMS_METHOD.valid?(@sms_method)
        invalid_properties.push("invalid value for \"sms_method\", must be one of #{ENUM_VALIDATOR_FOR_SMS_METHOD.allowable_values}.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@account_sid.nil? && @account_sid.to_s.size > 34
      return false if !@account_sid.nil? && @account_sid.to_s.size < 34
      return false if !@account_sid.nil? && @account_sid !~ /^AC[0-9a-fA-F]{32}$/
      return false if !@sid.nil? && @sid.to_s.size > 34
      return false if !@sid.nil? && @sid.to_s.size < 34
      return false if !@sid.nil? && @sid !~ /^SC[0-9a-fA-F]{32}$/
      return false unless ENUM_VALIDATOR_FOR_SMS_FALLBACK_METHOD.valid?(@sms_fallback_method)
      return false unless ENUM_VALIDATOR_FOR_SMS_METHOD.valid?(@sms_method)
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
    # @param [Object] sid Value to be assigned
    def sid=(sid)
      if !sid.nil? && sid.to_s.size > 34
        raise ArgumentError.new("invalid value for \"sid\", the character length must be smaller than or equal to 34.")
      end

      if !sid.nil? && sid.to_s.size < 34
        raise ArgumentError.new("invalid value for \"sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^SC[0-9a-fA-F]{32}$/
      if !sid.nil? && sid !~ pattern
        raise ArgumentError.new("invalid value for \"sid\", must conform to the pattern #{pattern}.")
      end

      @sid = sid
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] sms_fallback_method Object to be assigned
    def sms_fallback_method=(sms_fallback_method)
      unless ENUM_VALIDATOR_FOR_SMS_FALLBACK_METHOD.valid?(sms_fallback_method)
        raise ArgumentError.new("invalid value for \"sms_fallback_method\", must be one of #{ENUM_VALIDATOR_FOR_SMS_FALLBACK_METHOD.allowable_values}.")
      end
      @sms_fallback_method = sms_fallback_method
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] sms_method Object to be assigned
    def sms_method=(sms_method)
      unless ENUM_VALIDATOR_FOR_SMS_METHOD.valid?(sms_method)
        raise ArgumentError.new("invalid value for \"sms_method\", must be one of #{ENUM_VALIDATOR_FOR_SMS_METHOD.allowable_values}.")
      end
      @sms_method = sms_method
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.same?(o)
      self.class == o.class &&
        account_sid == o.account_sid &&
        api_version == o.api_version &&
        date_created == o.date_created &&
        date_updated == o.date_updated &&
        friendly_name == o.friendly_name &&
        short_code == o.short_code &&
        sid == o.sid &&
        sms_fallback_method == o.sms_fallback_method &&
        sms_fallback_url == o.sms_fallback_url &&
        sms_method == o.sms_method &&
        sms_url == o.sms_url &&
        uri == o.uri
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [UInt64] Hash code
    def_hash(@account_sid, @api_version, @date_created, @date_updated, @friendly_name, @short_code, @sid, @sms_fallback_method, @sms_fallback_url, @sms_method, @sms_url, @uri)
  end
end
