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
  class AddressDependentPhoneNumber
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    # The SID of the Account that created the resource
    @[JSON::Field(key: "account_sid", type: String?, presence: true, ignore_serialize: account_sid.nil? && !account_sid_present?)]
    getter account_sid : String?

    @[JSON::Field(ignore: true)]
    property? account_sid_present : Bool = false

    # Whether the phone number requires an Address registered with Twilio
    @[JSON::Field(key: "address_requirements", type: String?, presence: true, ignore_serialize: address_requirements.nil? && !address_requirements_present?)]
    getter address_requirements : String?

    @[JSON::Field(ignore: true)]
    property? address_requirements_present : Bool = false

    ENUM_VALIDATOR_FOR_ADDRESS_REQUIREMENTS = EnumValidator.new("address_requirements", "String", ["none", "any", "local", "foreign"])

    # The API version used to start a new TwiML session
    @[JSON::Field(key: "api_version", type: String?, presence: true, ignore_serialize: api_version.nil? && !api_version_present?)]
    property api_version : String?

    @[JSON::Field(ignore: true)]
    property? api_version_present : Bool = false

    @[JSON::Field(key: "capabilities", type: AddressDependentPhoneNumberCapabilities?, presence: true, ignore_serialize: capabilities.nil? && !capabilities_present?)]
    property capabilities : AddressDependentPhoneNumberCapabilities?

    @[JSON::Field(ignore: true)]
    property? capabilities_present : Bool = false

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

    # The emergency address configuration to use for emergency calling
    @[JSON::Field(key: "emergency_address_sid", type: String?, presence: true, ignore_serialize: emergency_address_sid.nil? && !emergency_address_sid_present?)]
    getter emergency_address_sid : String?

    @[JSON::Field(ignore: true)]
    property? emergency_address_sid_present : Bool = false

    # Whether the phone number is enabled for emergency calling
    @[JSON::Field(key: "emergency_status", type: String?, presence: true, ignore_serialize: emergency_status.nil? && !emergency_status_present?)]
    getter emergency_status : String?

    @[JSON::Field(ignore: true)]
    property? emergency_status_present : Bool = false

    ENUM_VALIDATOR_FOR_EMERGENCY_STATUS = EnumValidator.new("emergency_status", "String", ["Active", "Inactive"])

    # The string that you assigned to describe the resource
    @[JSON::Field(key: "friendly_name", type: String?, presence: true, ignore_serialize: friendly_name.nil? && !friendly_name_present?)]
    property friendly_name : String?

    @[JSON::Field(ignore: true)]
    property? friendly_name_present : Bool = false

    # The phone number in E.164 format
    @[JSON::Field(key: "phone_number", type: String?, presence: true, ignore_serialize: phone_number.nil? && !phone_number_present?)]
    property phone_number : String?

    @[JSON::Field(ignore: true)]
    property? phone_number_present : Bool = false

    # The unique string that identifies the resource
    @[JSON::Field(key: "sid", type: String?, presence: true, ignore_serialize: sid.nil? && !sid_present?)]
    getter sid : String?

    @[JSON::Field(ignore: true)]
    property? sid_present : Bool = false

    # The SID of the application that handles SMS messages sent to the phone number
    @[JSON::Field(key: "sms_application_sid", type: String?, presence: true, ignore_serialize: sms_application_sid.nil? && !sms_application_sid_present?)]
    getter sms_application_sid : String?

    @[JSON::Field(ignore: true)]
    property? sms_application_sid_present : Bool = false

    # The HTTP method used with sms_fallback_url
    @[JSON::Field(key: "sms_fallback_method", type: String?, presence: true, ignore_serialize: sms_fallback_method.nil? && !sms_fallback_method_present?)]
    getter sms_fallback_method : String?

    @[JSON::Field(ignore: true)]
    property? sms_fallback_method_present : Bool = false

    ENUM_VALIDATOR_FOR_SMS_FALLBACK_METHOD = EnumValidator.new("sms_fallback_method", "String", ["HEAD", "GET", "POST", "PATCH", "PUT", "DELETE"])

    # The URL that we call when an error occurs while retrieving or executing the TwiML
    @[JSON::Field(key: "sms_fallback_url", type: String?, presence: true, ignore_serialize: sms_fallback_url.nil? && !sms_fallback_url_present?)]
    property sms_fallback_url : String?

    @[JSON::Field(ignore: true)]
    property? sms_fallback_url_present : Bool = false

    # The HTTP method to use with sms_url
    @[JSON::Field(key: "sms_method", type: String?, presence: true, ignore_serialize: sms_method.nil? && !sms_method_present?)]
    getter sms_method : String?

    @[JSON::Field(ignore: true)]
    property? sms_method_present : Bool = false

    ENUM_VALIDATOR_FOR_SMS_METHOD = EnumValidator.new("sms_method", "String", ["HEAD", "GET", "POST", "PATCH", "PUT", "DELETE"])

    # The URL we call when the phone number receives an incoming SMS message
    @[JSON::Field(key: "sms_url", type: String?, presence: true, ignore_serialize: sms_url.nil? && !sms_url_present?)]
    property sms_url : String?

    @[JSON::Field(ignore: true)]
    property? sms_url_present : Bool = false

    # The URL to send status information to your application
    @[JSON::Field(key: "status_callback", type: String?, presence: true, ignore_serialize: status_callback.nil? && !status_callback_present?)]
    property status_callback : String?

    @[JSON::Field(ignore: true)]
    property? status_callback_present : Bool = false

    # The HTTP method we use to call status_callback
    @[JSON::Field(key: "status_callback_method", type: String?, presence: true, ignore_serialize: status_callback_method.nil? && !status_callback_method_present?)]
    getter status_callback_method : String?

    @[JSON::Field(ignore: true)]
    property? status_callback_method_present : Bool = false

    ENUM_VALIDATOR_FOR_STATUS_CALLBACK_METHOD = EnumValidator.new("status_callback_method", "String", ["HEAD", "GET", "POST", "PATCH", "PUT", "DELETE"])

    # The SID of the Trunk that handles calls to the phone number
    @[JSON::Field(key: "trunk_sid", type: String?, presence: true, ignore_serialize: trunk_sid.nil? && !trunk_sid_present?)]
    getter trunk_sid : String?

    @[JSON::Field(ignore: true)]
    property? trunk_sid_present : Bool = false

    # The URI of the resource, relative to `https://api.twilio.com`
    @[JSON::Field(key: "uri", type: String?, presence: true, ignore_serialize: uri.nil? && !uri_present?)]
    property uri : String?

    @[JSON::Field(ignore: true)]
    property? uri_present : Bool = false

    # The SID of the application that handles calls to the phone number
    @[JSON::Field(key: "voice_application_sid", type: String?, presence: true, ignore_serialize: voice_application_sid.nil? && !voice_application_sid_present?)]
    getter voice_application_sid : String?

    @[JSON::Field(ignore: true)]
    property? voice_application_sid_present : Bool = false

    # Whether to lookup the caller's name
    @[JSON::Field(key: "voice_caller_id_lookup", type: Bool?, presence: true, ignore_serialize: voice_caller_id_lookup.nil? && !voice_caller_id_lookup_present?)]
    property voice_caller_id_lookup : Bool?

    @[JSON::Field(ignore: true)]
    property? voice_caller_id_lookup_present : Bool = false

    # The HTTP method used with voice_fallback_url
    @[JSON::Field(key: "voice_fallback_method", type: String?, presence: true, ignore_serialize: voice_fallback_method.nil? && !voice_fallback_method_present?)]
    getter voice_fallback_method : String?

    @[JSON::Field(ignore: true)]
    property? voice_fallback_method_present : Bool = false

    ENUM_VALIDATOR_FOR_VOICE_FALLBACK_METHOD = EnumValidator.new("voice_fallback_method", "String", ["HEAD", "GET", "POST", "PATCH", "PUT", "DELETE"])

    # The URL we call when an error occurs in TwiML
    @[JSON::Field(key: "voice_fallback_url", type: String?, presence: true, ignore_serialize: voice_fallback_url.nil? && !voice_fallback_url_present?)]
    property voice_fallback_url : String?

    @[JSON::Field(ignore: true)]
    property? voice_fallback_url_present : Bool = false

    # The HTTP method used with the voice_url
    @[JSON::Field(key: "voice_method", type: String?, presence: true, ignore_serialize: voice_method.nil? && !voice_method_present?)]
    getter voice_method : String?

    @[JSON::Field(ignore: true)]
    property? voice_method_present : Bool = false

    ENUM_VALIDATOR_FOR_VOICE_METHOD = EnumValidator.new("voice_method", "String", ["HEAD", "GET", "POST", "PATCH", "PUT", "DELETE"])

    # The URL we call when the phone number receives a call
    @[JSON::Field(key: "voice_url", type: String?, presence: true, ignore_serialize: voice_url.nil? && !voice_url_present?)]
    property voice_url : String?

    @[JSON::Field(ignore: true)]
    property? voice_url_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @account_sid : String? = nil,
      @address_requirements : String? = nil,
      @api_version : String? = nil,
      @capabilities : AddressDependentPhoneNumberCapabilities? = nil,
      @date_created : Time? = nil,
      @date_updated : Time? = nil,
      @emergency_address_sid : String? = nil,
      @emergency_status : String? = nil,
      @friendly_name : String? = nil,
      @phone_number : String? = nil,
      @sid : String? = nil,
      @sms_application_sid : String? = nil,
      @sms_fallback_method : String? = nil,
      @sms_fallback_url : String? = nil,
      @sms_method : String? = nil,
      @sms_url : String? = nil,
      @status_callback : String? = nil,
      @status_callback_method : String? = nil,
      @trunk_sid : String? = nil,
      @uri : String? = nil,
      @voice_application_sid : String? = nil,
      @voice_caller_id_lookup : Bool? = nil,
      @voice_fallback_method : String? = nil,
      @voice_fallback_url : String? = nil,
      @voice_method : String? = nil,
      @voice_url : String? = nil
    )
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

      invalid_properties.push(ENUM_VALIDATOR_FOR_ADDRESS_REQUIREMENTS.error_message) unless ENUM_VALIDATOR_FOR_ADDRESS_REQUIREMENTS.valid?(@address_requirements)

      if !@emergency_address_sid.nil? && @emergency_address_sid.to_s.size > 34
        invalid_properties.push("invalid value for \"emergency_address_sid\", the character length must be smaller than or equal to 34.")
      end

      if !@emergency_address_sid.nil? && @emergency_address_sid.to_s.size < 34
        invalid_properties.push("invalid value for \"emergency_address_sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^AD[0-9a-fA-F]{32}$/
      if !@emergency_address_sid.nil? && @emergency_address_sid !~ pattern
        invalid_properties.push("invalid value for \"emergency_address_sid\", must conform to the pattern #{pattern}.")
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR_EMERGENCY_STATUS.error_message) unless ENUM_VALIDATOR_FOR_EMERGENCY_STATUS.valid?(@emergency_status)

      if !@sid.nil? && @sid.to_s.size > 34
        invalid_properties.push("invalid value for \"sid\", the character length must be smaller than or equal to 34.")
      end

      if !@sid.nil? && @sid.to_s.size < 34
        invalid_properties.push("invalid value for \"sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^PN[0-9a-fA-F]{32}$/
      if !@sid.nil? && @sid !~ pattern
        invalid_properties.push("invalid value for \"sid\", must conform to the pattern #{pattern}.")
      end

      if !@sms_application_sid.nil? && @sms_application_sid.to_s.size > 34
        invalid_properties.push("invalid value for \"sms_application_sid\", the character length must be smaller than or equal to 34.")
      end

      if !@sms_application_sid.nil? && @sms_application_sid.to_s.size < 34
        invalid_properties.push("invalid value for \"sms_application_sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^AP[0-9a-fA-F]{32}$/
      if !@sms_application_sid.nil? && @sms_application_sid !~ pattern
        invalid_properties.push("invalid value for \"sms_application_sid\", must conform to the pattern #{pattern}.")
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR_SMS_FALLBACK_METHOD.error_message) unless ENUM_VALIDATOR_FOR_SMS_FALLBACK_METHOD.valid?(@sms_fallback_method)

      invalid_properties.push(ENUM_VALIDATOR_FOR_SMS_METHOD.error_message) unless ENUM_VALIDATOR_FOR_SMS_METHOD.valid?(@sms_method)

      invalid_properties.push(ENUM_VALIDATOR_FOR_STATUS_CALLBACK_METHOD.error_message) unless ENUM_VALIDATOR_FOR_STATUS_CALLBACK_METHOD.valid?(@status_callback_method)

      if !@trunk_sid.nil? && @trunk_sid.to_s.size > 34
        invalid_properties.push("invalid value for \"trunk_sid\", the character length must be smaller than or equal to 34.")
      end

      if !@trunk_sid.nil? && @trunk_sid.to_s.size < 34
        invalid_properties.push("invalid value for \"trunk_sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^TK[0-9a-fA-F]{32}$/
      if !@trunk_sid.nil? && @trunk_sid !~ pattern
        invalid_properties.push("invalid value for \"trunk_sid\", must conform to the pattern #{pattern}.")
      end

      if !@voice_application_sid.nil? && @voice_application_sid.to_s.size > 34
        invalid_properties.push("invalid value for \"voice_application_sid\", the character length must be smaller than or equal to 34.")
      end

      if !@voice_application_sid.nil? && @voice_application_sid.to_s.size < 34
        invalid_properties.push("invalid value for \"voice_application_sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^AP[0-9a-fA-F]{32}$/
      if !@voice_application_sid.nil? && @voice_application_sid !~ pattern
        invalid_properties.push("invalid value for \"voice_application_sid\", must conform to the pattern #{pattern}.")
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR_VOICE_FALLBACK_METHOD.error_message) unless ENUM_VALIDATOR_FOR_VOICE_FALLBACK_METHOD.valid?(@voice_fallback_method)

      invalid_properties.push(ENUM_VALIDATOR_FOR_VOICE_METHOD.error_message) unless ENUM_VALIDATOR_FOR_VOICE_METHOD.valid?(@voice_method)

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@account_sid.nil? && @account_sid.to_s.size > 34
      return false if !@account_sid.nil? && @account_sid.to_s.size < 34
      return false if !@account_sid.nil? && @account_sid !~ /^AC[0-9a-fA-F]{32}$/
      return false unless ENUM_VALIDATOR_FOR_ADDRESS_REQUIREMENTS.valid?(@address_requirements)
      return false if !@emergency_address_sid.nil? && @emergency_address_sid.to_s.size > 34
      return false if !@emergency_address_sid.nil? && @emergency_address_sid.to_s.size < 34
      return false if !@emergency_address_sid.nil? && @emergency_address_sid !~ /^AD[0-9a-fA-F]{32}$/
      return false unless ENUM_VALIDATOR_FOR_EMERGENCY_STATUS.valid?(@emergency_status)
      return false if !@sid.nil? && @sid.to_s.size > 34
      return false if !@sid.nil? && @sid.to_s.size < 34
      return false if !@sid.nil? && @sid !~ /^PN[0-9a-fA-F]{32}$/
      return false if !@sms_application_sid.nil? && @sms_application_sid.to_s.size > 34
      return false if !@sms_application_sid.nil? && @sms_application_sid.to_s.size < 34
      return false if !@sms_application_sid.nil? && @sms_application_sid !~ /^AP[0-9a-fA-F]{32}$/
      return false unless ENUM_VALIDATOR_FOR_SMS_FALLBACK_METHOD.valid?(@sms_fallback_method)
      return false unless ENUM_VALIDATOR_FOR_SMS_METHOD.valid?(@sms_method)
      return false unless ENUM_VALIDATOR_FOR_STATUS_CALLBACK_METHOD.valid?(@status_callback_method)
      return false if !@trunk_sid.nil? && @trunk_sid.to_s.size > 34
      return false if !@trunk_sid.nil? && @trunk_sid.to_s.size < 34
      return false if !@trunk_sid.nil? && @trunk_sid !~ /^TK[0-9a-fA-F]{32}$/
      return false if !@voice_application_sid.nil? && @voice_application_sid.to_s.size > 34
      return false if !@voice_application_sid.nil? && @voice_application_sid.to_s.size < 34
      return false if !@voice_application_sid.nil? && @voice_application_sid !~ /^AP[0-9a-fA-F]{32}$/
      return false unless ENUM_VALIDATOR_FOR_VOICE_FALLBACK_METHOD.valid?(@voice_fallback_method)
      return false unless ENUM_VALIDATOR_FOR_VOICE_METHOD.valid?(@voice_method)

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] account_sid Value to be assigned
    def account_sid=(account_sid : String?)
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

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] address_requirements Object to be assigned
    def address_requirements=(address_requirements : String?)
      ENUM_VALIDATOR_FOR_ADDRESS_REQUIREMENTS.valid!(address_requirements)
      @address_requirements = address_requirements
    end

    # Custom attribute writer method with validation
    # @param [Object] emergency_address_sid Value to be assigned
    def emergency_address_sid=(emergency_address_sid : String?)
      if !emergency_address_sid.nil? && emergency_address_sid.to_s.size > 34
        raise ArgumentError.new("invalid value for \"emergency_address_sid\", the character length must be smaller than or equal to 34.")
      end

      if !emergency_address_sid.nil? && emergency_address_sid.to_s.size < 34
        raise ArgumentError.new("invalid value for \"emergency_address_sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^AD[0-9a-fA-F]{32}$/
      if !emergency_address_sid.nil? && emergency_address_sid !~ pattern
        raise ArgumentError.new("invalid value for \"emergency_address_sid\", must conform to the pattern #{pattern}.")
      end

      @emergency_address_sid = emergency_address_sid
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] emergency_status Object to be assigned
    def emergency_status=(emergency_status : String?)
      ENUM_VALIDATOR_FOR_EMERGENCY_STATUS.valid!(emergency_status)
      @emergency_status = emergency_status
    end

    # Custom attribute writer method with validation
    # @param [Object] sid Value to be assigned
    def sid=(sid : String?)
      if !sid.nil? && sid.to_s.size > 34
        raise ArgumentError.new("invalid value for \"sid\", the character length must be smaller than or equal to 34.")
      end

      if !sid.nil? && sid.to_s.size < 34
        raise ArgumentError.new("invalid value for \"sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^PN[0-9a-fA-F]{32}$/
      if !sid.nil? && sid !~ pattern
        raise ArgumentError.new("invalid value for \"sid\", must conform to the pattern #{pattern}.")
      end

      @sid = sid
    end

    # Custom attribute writer method with validation
    # @param [Object] sms_application_sid Value to be assigned
    def sms_application_sid=(sms_application_sid : String?)
      if !sms_application_sid.nil? && sms_application_sid.to_s.size > 34
        raise ArgumentError.new("invalid value for \"sms_application_sid\", the character length must be smaller than or equal to 34.")
      end

      if !sms_application_sid.nil? && sms_application_sid.to_s.size < 34
        raise ArgumentError.new("invalid value for \"sms_application_sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^AP[0-9a-fA-F]{32}$/
      if !sms_application_sid.nil? && sms_application_sid !~ pattern
        raise ArgumentError.new("invalid value for \"sms_application_sid\", must conform to the pattern #{pattern}.")
      end

      @sms_application_sid = sms_application_sid
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] sms_fallback_method Object to be assigned
    def sms_fallback_method=(sms_fallback_method : String?)
      ENUM_VALIDATOR_FOR_SMS_FALLBACK_METHOD.valid!(sms_fallback_method)
      @sms_fallback_method = sms_fallback_method
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] sms_method Object to be assigned
    def sms_method=(sms_method : String?)
      ENUM_VALIDATOR_FOR_SMS_METHOD.valid!(sms_method)
      @sms_method = sms_method
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status_callback_method Object to be assigned
    def status_callback_method=(status_callback_method : String?)
      ENUM_VALIDATOR_FOR_STATUS_CALLBACK_METHOD.valid!(status_callback_method)
      @status_callback_method = status_callback_method
    end

    # Custom attribute writer method with validation
    # @param [Object] trunk_sid Value to be assigned
    def trunk_sid=(trunk_sid : String?)
      if !trunk_sid.nil? && trunk_sid.to_s.size > 34
        raise ArgumentError.new("invalid value for \"trunk_sid\", the character length must be smaller than or equal to 34.")
      end

      if !trunk_sid.nil? && trunk_sid.to_s.size < 34
        raise ArgumentError.new("invalid value for \"trunk_sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^TK[0-9a-fA-F]{32}$/
      if !trunk_sid.nil? && trunk_sid !~ pattern
        raise ArgumentError.new("invalid value for \"trunk_sid\", must conform to the pattern #{pattern}.")
      end

      @trunk_sid = trunk_sid
    end

    # Custom attribute writer method with validation
    # @param [Object] voice_application_sid Value to be assigned
    def voice_application_sid=(voice_application_sid : String?)
      if !voice_application_sid.nil? && voice_application_sid.to_s.size > 34
        raise ArgumentError.new("invalid value for \"voice_application_sid\", the character length must be smaller than or equal to 34.")
      end

      if !voice_application_sid.nil? && voice_application_sid.to_s.size < 34
        raise ArgumentError.new("invalid value for \"voice_application_sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^AP[0-9a-fA-F]{32}$/
      if !voice_application_sid.nil? && voice_application_sid !~ pattern
        raise ArgumentError.new("invalid value for \"voice_application_sid\", must conform to the pattern #{pattern}.")
      end

      @voice_application_sid = voice_application_sid
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] voice_fallback_method Object to be assigned
    def voice_fallback_method=(voice_fallback_method : String?)
      ENUM_VALIDATOR_FOR_VOICE_FALLBACK_METHOD.valid!(voice_fallback_method)
      @voice_fallback_method = voice_fallback_method
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] voice_method Object to be assigned
    def voice_method=(voice_method : String?)
      ENUM_VALIDATOR_FOR_VOICE_METHOD.valid!(voice_method)
      @voice_method = voice_method
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
    def_equals_and_hash(@account_sid, @account_sid_present, @address_requirements, @address_requirements_present, @api_version, @api_version_present, @capabilities, @capabilities_present, @date_created, @date_created_present, @date_updated, @date_updated_present, @emergency_address_sid, @emergency_address_sid_present, @emergency_status, @emergency_status_present, @friendly_name, @friendly_name_present, @phone_number, @phone_number_present, @sid, @sid_present, @sms_application_sid, @sms_application_sid_present, @sms_fallback_method, @sms_fallback_method_present, @sms_fallback_url, @sms_fallback_url_present, @sms_method, @sms_method_present, @sms_url, @sms_url_present, @status_callback, @status_callback_present, @status_callback_method, @status_callback_method_present, @trunk_sid, @trunk_sid_present, @uri, @uri_present, @voice_application_sid, @voice_application_sid_present, @voice_caller_id_lookup, @voice_caller_id_lookup_present, @voice_fallback_method, @voice_fallback_method_present, @voice_fallback_url, @voice_fallback_url_present, @voice_method, @voice_method_present, @voice_url, @voice_url_present)
  end
end
