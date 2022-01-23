#  Twilio - Api
#
# This is the public Twilio REST API.
#
# The version of the OpenAPI document: 1.23.1
# Contact: support@twilio.com
# Generated by: https://openapi-generator.tech
#

require "nason"
require "time"
require "log"

module Twilio
  class IncomingPhoneNumberIncomingPhoneNumberMobile
    include NASON::Serializable

    # Optional properties
    # The SID of the Account that created the resource
    @[NASON::Field(key: "account_sid", type: String? | Null, nillable: true)]
    property account_sid : String? | Null

    # Whether the phone number requires an Address registered with Twilio.
    @[NASON::Field(key: "address_requirements", type: String? | Null, nillable: true)]
    property address_requirements : String? | Null

    # The SID of the Address resource associated with the phone number
    @[NASON::Field(key: "address_sid", type: String? | Null, nillable: true)]
    property address_sid : String? | Null

    # The API version used to start a new TwiML session
    @[NASON::Field(key: "api_version", type: String? | Null, nillable: true)]
    property api_version : String? | Null

    # Whether the phone number is new to the Twilio platform
    @[NASON::Field(key: "beta", type: Bool? | Null, nillable: true)]
    property beta : Bool? | Null

    # The SID of the Bundle resource associated with number
    @[NASON::Field(key: "bundle_sid", type: String? | Null, nillable: true)]
    property bundle_sid : String? | Null

    @[NASON::Field(key: "capabilities", type: AddressDependentPhoneNumberCapabilities? | Null, nillable: true)]
    property capabilities : AddressDependentPhoneNumberCapabilities? | Null

    # The RFC 2822 date and time in GMT that the resource was created
    @[NASON::Field(key: "date_created", type: Time? | Null, converter: Time::RFC2822Converter, nillable: true)]
    property date_created : Time? | Null

    # The RFC 2822 date and time in GMT that the resource was last updated
    @[NASON::Field(key: "date_updated", type: Time? | Null, converter: Time::RFC2822Converter, nillable: true)]
    property date_updated : Time? | Null

    # The emergency address configuration to use for emergency calling
    @[NASON::Field(key: "emergency_address_sid", type: String? | Null, nillable: true)]
    property emergency_address_sid : String? | Null

    # State of the emergency address configuration for the phone number
    @[NASON::Field(key: "emergency_address_status", type: String? | Null, nillable: true)]
    property emergency_address_status : String? | Null

    # Displays if emergency calling is enabled for this number.
    @[NASON::Field(key: "emergency_status", type: String? | Null, nillable: true)]
    property emergency_status : String? | Null

    # The string that you assigned to describe the resource
    @[NASON::Field(key: "friendly_name", type: String? | Null, nillable: true)]
    property friendly_name : String? | Null

    # The SID of the Identity resource associated with number
    @[NASON::Field(key: "identity_sid", type: String? | Null, nillable: true)]
    property identity_sid : String? | Null

    # The phone number's origin. Can be twilio or hosted.
    @[NASON::Field(key: "origin", type: String? | Null, nillable: true)]
    property origin : String? | Null

    # The phone number in E.164 format
    @[NASON::Field(key: "phone_number", type: String? | Null, nillable: true)]
    property phone_number : String? | Null

    # The unique string that identifies the resource
    @[NASON::Field(key: "sid", type: String? | Null, nillable: true)]
    property sid : String? | Null

    # The SID of the application that handles SMS messages sent to the phone number
    @[NASON::Field(key: "sms_application_sid", type: String? | Null, nillable: true)]
    property sms_application_sid : String? | Null

    # The HTTP method used with sms_fallback_url
    @[NASON::Field(key: "sms_fallback_method", type: String? | Null, nillable: true)]
    property sms_fallback_method : String? | Null

    # The URL that we call when an error occurs while retrieving or executing the TwiML
    @[NASON::Field(key: "sms_fallback_url", type: String? | Null, nillable: true)]
    property sms_fallback_url : String? | Null

    # The HTTP method to use with sms_url
    @[NASON::Field(key: "sms_method", type: String? | Null, nillable: true)]
    property sms_method : String? | Null

    # The URL we call when the phone number receives an incoming SMS message
    @[NASON::Field(key: "sms_url", type: String? | Null, nillable: true)]
    property sms_url : String? | Null

    @[NASON::Field(key: "status", type: String? | Null, nillable: true)]
    property status : String? | Null

    # The URL to send status information to your application
    @[NASON::Field(key: "status_callback", type: String? | Null, nillable: true)]
    property status_callback : String? | Null

    # The HTTP method we use to call status_callback
    @[NASON::Field(key: "status_callback_method", type: String? | Null, nillable: true)]
    property status_callback_method : String? | Null

    # The SID of the Trunk that handles calls to the phone number
    @[NASON::Field(key: "trunk_sid", type: String? | Null, nillable: true)]
    property trunk_sid : String? | Null

    # The URI of the resource, relative to `https://api.twilio.com`
    @[NASON::Field(key: "uri", type: String? | Null, nillable: true)]
    property uri : String? | Null

    # The SID of the application that handles calls to the phone number
    @[NASON::Field(key: "voice_application_sid", type: String? | Null, nillable: true)]
    property voice_application_sid : String? | Null

    # Whether to lookup the caller's name
    @[NASON::Field(key: "voice_caller_id_lookup", type: Bool? | Null, nillable: true)]
    property voice_caller_id_lookup : Bool? | Null

    # The HTTP method used with voice_fallback_url
    @[NASON::Field(key: "voice_fallback_method", type: String? | Null, nillable: true)]
    property voice_fallback_method : String? | Null

    # The URL we call when an error occurs in TwiML
    @[NASON::Field(key: "voice_fallback_url", type: String? | Null, nillable: true)]
    property voice_fallback_url : String? | Null

    # The HTTP method used with the voice_url
    @[NASON::Field(key: "voice_method", type: String? | Null, nillable: true)]
    property voice_method : String? | Null

    @[NASON::Field(key: "voice_receive_mode", type: String? | Null, nillable: true)]
    property voice_receive_mode : String? | Null

    # The URL we call when the phone number receives a call
    @[NASON::Field(key: "voice_url", type: String? | Null, nillable: true)]
    property voice_url : String? | Null

    class EnumAttributeValidator
      getter datatype : String
      getter allowable_values : Array(String | Int32 | Float64)

      def initialize(datatype, allowable_values)
        @datatype = datatype
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        value.nil? || value.null? || allowable_values.includes?(value)
      end
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(*, @account_sid : String? | Null = nil, @address_requirements : String? | Null = nil, @address_sid : String? | Null = nil, @api_version : String? | Null = nil, @beta : Bool? | Null = nil, @bundle_sid : String? | Null = nil, @capabilities : AddressDependentPhoneNumberCapabilities? | Null = nil, @date_created : Time? | Null = nil, @date_updated : Time? | Null = nil, @emergency_address_sid : String? | Null = nil, @emergency_address_status : String? | Null = nil, @emergency_status : String? | Null = nil, @friendly_name : String? | Null = nil, @identity_sid : String? | Null = nil, @origin : String? | Null = nil, @phone_number : String? | Null = nil, @sid : String? | Null = nil, @sms_application_sid : String? | Null = nil, @sms_fallback_method : String? | Null = nil, @sms_fallback_url : String? | Null = nil, @sms_method : String? | Null = nil, @sms_url : String? | Null = nil, @status : String? | Null = nil, @status_callback : String? | Null = nil, @status_callback_method : String? | Null = nil, @trunk_sid : String? | Null = nil, @uri : String? | Null = nil, @voice_application_sid : String? | Null = nil, @voice_caller_id_lookup : Bool? | Null = nil, @voice_fallback_method : String? | Null = nil, @voice_fallback_url : String? | Null = nil, @voice_method : String? | Null = nil, @voice_receive_mode : String? | Null = nil, @voice_url : String? | Null = nil)
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new
      if !@account_sid.nil? && !@account_sid.null? && @account_sid.to_s.size > 34
        invalid_properties.push("invalid value for \"account_sid\", the character length must be smaller than or equal to 34.")
      end

      if !@account_sid.nil? && !@account_sid.null? && @account_sid.to_s.size < 34
        invalid_properties.push("invalid value for \"account_sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^AC[0-9a-fA-F]{32}$/
      if !@account_sid.nil? && !@account_sid.null? && @account_sid !~ pattern
        invalid_properties.push("invalid value for \"account_sid\", must conform to the pattern #{pattern}.")
      end

      if !@address_sid.nil? && !@address_sid.null? && @address_sid.to_s.size > 34
        invalid_properties.push("invalid value for \"address_sid\", the character length must be smaller than or equal to 34.")
      end

      if !@address_sid.nil? && !@address_sid.null? && @address_sid.to_s.size < 34
        invalid_properties.push("invalid value for \"address_sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^AD[0-9a-fA-F]{32}$/
      if !@address_sid.nil? && !@address_sid.null? && @address_sid !~ pattern
        invalid_properties.push("invalid value for \"address_sid\", must conform to the pattern #{pattern}.")
      end

      if !@bundle_sid.nil? && !@bundle_sid.null? && @bundle_sid.to_s.size > 34
        invalid_properties.push("invalid value for \"bundle_sid\", the character length must be smaller than or equal to 34.")
      end

      if !@bundle_sid.nil? && !@bundle_sid.null? && @bundle_sid.to_s.size < 34
        invalid_properties.push("invalid value for \"bundle_sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^BU[0-9a-fA-F]{32}$/
      if !@bundle_sid.nil? && !@bundle_sid.null? && @bundle_sid !~ pattern
        invalid_properties.push("invalid value for \"bundle_sid\", must conform to the pattern #{pattern}.")
      end

      if !@emergency_address_sid.nil? && !@emergency_address_sid.null? && @emergency_address_sid.to_s.size > 34
        invalid_properties.push("invalid value for \"emergency_address_sid\", the character length must be smaller than or equal to 34.")
      end

      if !@emergency_address_sid.nil? && !@emergency_address_sid.null? && @emergency_address_sid.to_s.size < 34
        invalid_properties.push("invalid value for \"emergency_address_sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^AD[0-9a-fA-F]{32}$/
      if !@emergency_address_sid.nil? && !@emergency_address_sid.null? && @emergency_address_sid !~ pattern
        invalid_properties.push("invalid value for \"emergency_address_sid\", must conform to the pattern #{pattern}.")
      end

      if !@identity_sid.nil? && !@identity_sid.null? && @identity_sid.to_s.size > 34
        invalid_properties.push("invalid value for \"identity_sid\", the character length must be smaller than or equal to 34.")
      end

      if !@identity_sid.nil? && !@identity_sid.null? && @identity_sid.to_s.size < 34
        invalid_properties.push("invalid value for \"identity_sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^RI[0-9a-fA-F]{32}$/
      if !@identity_sid.nil? && !@identity_sid.null? && @identity_sid !~ pattern
        invalid_properties.push("invalid value for \"identity_sid\", must conform to the pattern #{pattern}.")
      end

      if !@sid.nil? && !@sid.null? && @sid.to_s.size > 34
        invalid_properties.push("invalid value for \"sid\", the character length must be smaller than or equal to 34.")
      end

      if !@sid.nil? && !@sid.null? && @sid.to_s.size < 34
        invalid_properties.push("invalid value for \"sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^PN[0-9a-fA-F]{32}$/
      if !@sid.nil? && !@sid.null? && @sid !~ pattern
        invalid_properties.push("invalid value for \"sid\", must conform to the pattern #{pattern}.")
      end

      if !@sms_application_sid.nil? && !@sms_application_sid.null? && @sms_application_sid.to_s.size > 34
        invalid_properties.push("invalid value for \"sms_application_sid\", the character length must be smaller than or equal to 34.")
      end

      if !@sms_application_sid.nil? && !@sms_application_sid.null? && @sms_application_sid.to_s.size < 34
        invalid_properties.push("invalid value for \"sms_application_sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^AP[0-9a-fA-F]{32}$/
      if !@sms_application_sid.nil? && !@sms_application_sid.null? && @sms_application_sid !~ pattern
        invalid_properties.push("invalid value for \"sms_application_sid\", must conform to the pattern #{pattern}.")
      end

      if !@trunk_sid.nil? && !@trunk_sid.null? && @trunk_sid.to_s.size > 34
        invalid_properties.push("invalid value for \"trunk_sid\", the character length must be smaller than or equal to 34.")
      end

      if !@trunk_sid.nil? && !@trunk_sid.null? && @trunk_sid.to_s.size < 34
        invalid_properties.push("invalid value for \"trunk_sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^TK[0-9a-fA-F]{32}$/
      if !@trunk_sid.nil? && !@trunk_sid.null? && @trunk_sid !~ pattern
        invalid_properties.push("invalid value for \"trunk_sid\", must conform to the pattern #{pattern}.")
      end

      if !@voice_application_sid.nil? && !@voice_application_sid.null? && @voice_application_sid.to_s.size > 34
        invalid_properties.push("invalid value for \"voice_application_sid\", the character length must be smaller than or equal to 34.")
      end

      if !@voice_application_sid.nil? && !@voice_application_sid.null? && @voice_application_sid.to_s.size < 34
        invalid_properties.push("invalid value for \"voice_application_sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^AP[0-9a-fA-F]{32}$/
      if !@voice_application_sid.nil? && !@voice_application_sid.null? && @voice_application_sid !~ pattern
        invalid_properties.push("invalid value for \"voice_application_sid\", must conform to the pattern #{pattern}.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@account_sid.nil? && !@account_sid.null? && @account_sid.to_s.size > 34
      return false if !@account_sid.nil? && !@account_sid.null? && @account_sid.to_s.size < 34
      return false if !@account_sid.nil? && !@account_sid.null? && @account_sid !~ /^AC[0-9a-fA-F]{32}$/
      address_requirements_validator = EnumAttributeValidator.new("String", ["none", "any", "local", "foreign"])
      return false unless address_requirements_validator.valid?(@address_requirements)
      return false if !@address_sid.nil? && !@address_sid.null? && @address_sid.to_s.size > 34
      return false if !@address_sid.nil? && !@address_sid.null? && @address_sid.to_s.size < 34
      return false if !@address_sid.nil? && !@address_sid.null? && @address_sid !~ /^AD[0-9a-fA-F]{32}$/
      return false if !@bundle_sid.nil? && !@bundle_sid.null? && @bundle_sid.to_s.size > 34
      return false if !@bundle_sid.nil? && !@bundle_sid.null? && @bundle_sid.to_s.size < 34
      return false if !@bundle_sid.nil? && !@bundle_sid.null? && @bundle_sid !~ /^BU[0-9a-fA-F]{32}$/
      return false if !@emergency_address_sid.nil? && !@emergency_address_sid.null? && @emergency_address_sid.to_s.size > 34
      return false if !@emergency_address_sid.nil? && !@emergency_address_sid.null? && @emergency_address_sid.to_s.size < 34
      return false if !@emergency_address_sid.nil? && !@emergency_address_sid.null? && @emergency_address_sid !~ /^AD[0-9a-fA-F]{32}$/
      emergency_address_status_validator = EnumAttributeValidator.new("String", ["registered", "unregistered", "pending-registration", "registration-failure", "pending-unregistration", "unregistration-failure"])
      return false unless emergency_address_status_validator.valid?(@emergency_address_status)
      emergency_status_validator = EnumAttributeValidator.new("String", ["Active", "Inactive"])
      return false unless emergency_status_validator.valid?(@emergency_status)
      return false if !@identity_sid.nil? && !@identity_sid.null? && @identity_sid.to_s.size > 34
      return false if !@identity_sid.nil? && !@identity_sid.null? && @identity_sid.to_s.size < 34
      return false if !@identity_sid.nil? && !@identity_sid.null? && @identity_sid !~ /^RI[0-9a-fA-F]{32}$/
      return false if !@sid.nil? && !@sid.null? && @sid.to_s.size > 34
      return false if !@sid.nil? && !@sid.null? && @sid.to_s.size < 34
      return false if !@sid.nil? && !@sid.null? && @sid !~ /^PN[0-9a-fA-F]{32}$/
      return false if !@sms_application_sid.nil? && !@sms_application_sid.null? && @sms_application_sid.to_s.size > 34
      return false if !@sms_application_sid.nil? && !@sms_application_sid.null? && @sms_application_sid.to_s.size < 34
      return false if !@sms_application_sid.nil? && !@sms_application_sid.null? && @sms_application_sid !~ /^AP[0-9a-fA-F]{32}$/
      sms_fallback_method_validator = EnumAttributeValidator.new("String", ["HEAD", "GET", "POST", "PATCH", "PUT", "DELETE"])
      return false unless sms_fallback_method_validator.valid?(@sms_fallback_method)
      sms_method_validator = EnumAttributeValidator.new("String", ["HEAD", "GET", "POST", "PATCH", "PUT", "DELETE"])
      return false unless sms_method_validator.valid?(@sms_method)
      status_callback_method_validator = EnumAttributeValidator.new("String", ["HEAD", "GET", "POST", "PATCH", "PUT", "DELETE"])
      return false unless status_callback_method_validator.valid?(@status_callback_method)
      return false if !@trunk_sid.nil? && !@trunk_sid.null? && @trunk_sid.to_s.size > 34
      return false if !@trunk_sid.nil? && !@trunk_sid.null? && @trunk_sid.to_s.size < 34
      return false if !@trunk_sid.nil? && !@trunk_sid.null? && @trunk_sid !~ /^TK[0-9a-fA-F]{32}$/
      return false if !@voice_application_sid.nil? && !@voice_application_sid.null? && @voice_application_sid.to_s.size > 34
      return false if !@voice_application_sid.nil? && !@voice_application_sid.null? && @voice_application_sid.to_s.size < 34
      return false if !@voice_application_sid.nil? && !@voice_application_sid.null? && @voice_application_sid !~ /^AP[0-9a-fA-F]{32}$/
      voice_fallback_method_validator = EnumAttributeValidator.new("String", ["HEAD", "GET", "POST", "PATCH", "PUT", "DELETE"])
      return false unless voice_fallback_method_validator.valid?(@voice_fallback_method)
      voice_method_validator = EnumAttributeValidator.new("String", ["HEAD", "GET", "POST", "PATCH", "PUT", "DELETE"])
      return false unless voice_method_validator.valid?(@voice_method)
      voice_receive_mode_validator = EnumAttributeValidator.new("String", ["voice", "fax"])
      return false unless voice_receive_mode_validator.valid?(@voice_receive_mode)
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] account_sid Value to be assigned
    def account_sid=(account_sid)
      if !account_sid.nil? && !@account_sid.null? && account_sid.to_s.size > 34
        raise ArgumentError.new("invalid value for \"account_sid\", the character length must be smaller than or equal to 34.")
      end

      if !account_sid.nil? && !@account_sid.null? && account_sid.to_s.size < 34
        raise ArgumentError.new("invalid value for \"account_sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^AC[0-9a-fA-F]{32}$/
      if !account_sid.nil? && !@account_sid.null? && account_sid !~ pattern
        raise ArgumentError.new("invalid value for \"account_sid\", must conform to the pattern #{pattern}.")
      end

      @account_sid = account_sid
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] address_requirements Object to be assigned
    def address_requirements=(address_requirements)
      validator = EnumAttributeValidator.new("String", ["none", "any", "local", "foreign"])
      unless validator.valid?(address_requirements)
        raise ArgumentError.new("invalid value for \"address_requirements\", must be one of #{validator.allowable_values}.")
      end
      @address_requirements = address_requirements
    end

    # Custom attribute writer method with validation
    # @param [Object] address_sid Value to be assigned
    def address_sid=(address_sid)
      if !address_sid.nil? && !@address_sid.null? && address_sid.to_s.size > 34
        raise ArgumentError.new("invalid value for \"address_sid\", the character length must be smaller than or equal to 34.")
      end

      if !address_sid.nil? && !@address_sid.null? && address_sid.to_s.size < 34
        raise ArgumentError.new("invalid value for \"address_sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^AD[0-9a-fA-F]{32}$/
      if !address_sid.nil? && !@address_sid.null? && address_sid !~ pattern
        raise ArgumentError.new("invalid value for \"address_sid\", must conform to the pattern #{pattern}.")
      end

      @address_sid = address_sid
    end

    # Custom attribute writer method with validation
    # @param [Object] bundle_sid Value to be assigned
    def bundle_sid=(bundle_sid)
      if !bundle_sid.nil? && !@bundle_sid.null? && bundle_sid.to_s.size > 34
        raise ArgumentError.new("invalid value for \"bundle_sid\", the character length must be smaller than or equal to 34.")
      end

      if !bundle_sid.nil? && !@bundle_sid.null? && bundle_sid.to_s.size < 34
        raise ArgumentError.new("invalid value for \"bundle_sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^BU[0-9a-fA-F]{32}$/
      if !bundle_sid.nil? && !@bundle_sid.null? && bundle_sid !~ pattern
        raise ArgumentError.new("invalid value for \"bundle_sid\", must conform to the pattern #{pattern}.")
      end

      @bundle_sid = bundle_sid
    end

    # Custom attribute writer method with validation
    # @param [Object] emergency_address_sid Value to be assigned
    def emergency_address_sid=(emergency_address_sid)
      if !emergency_address_sid.nil? && !@emergency_address_sid.null? && emergency_address_sid.to_s.size > 34
        raise ArgumentError.new("invalid value for \"emergency_address_sid\", the character length must be smaller than or equal to 34.")
      end

      if !emergency_address_sid.nil? && !@emergency_address_sid.null? && emergency_address_sid.to_s.size < 34
        raise ArgumentError.new("invalid value for \"emergency_address_sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^AD[0-9a-fA-F]{32}$/
      if !emergency_address_sid.nil? && !@emergency_address_sid.null? && emergency_address_sid !~ pattern
        raise ArgumentError.new("invalid value for \"emergency_address_sid\", must conform to the pattern #{pattern}.")
      end

      @emergency_address_sid = emergency_address_sid
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] emergency_address_status Object to be assigned
    def emergency_address_status=(emergency_address_status)
      validator = EnumAttributeValidator.new("String", ["registered", "unregistered", "pending-registration", "registration-failure", "pending-unregistration", "unregistration-failure"])
      unless validator.valid?(emergency_address_status)
        raise ArgumentError.new("invalid value for \"emergency_address_status\", must be one of #{validator.allowable_values}.")
      end
      @emergency_address_status = emergency_address_status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] emergency_status Object to be assigned
    def emergency_status=(emergency_status)
      validator = EnumAttributeValidator.new("String", ["Active", "Inactive"])
      unless validator.valid?(emergency_status)
        raise ArgumentError.new("invalid value for \"emergency_status\", must be one of #{validator.allowable_values}.")
      end
      @emergency_status = emergency_status
    end

    # Custom attribute writer method with validation
    # @param [Object] identity_sid Value to be assigned
    def identity_sid=(identity_sid)
      if !identity_sid.nil? && !@identity_sid.null? && identity_sid.to_s.size > 34
        raise ArgumentError.new("invalid value for \"identity_sid\", the character length must be smaller than or equal to 34.")
      end

      if !identity_sid.nil? && !@identity_sid.null? && identity_sid.to_s.size < 34
        raise ArgumentError.new("invalid value for \"identity_sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^RI[0-9a-fA-F]{32}$/
      if !identity_sid.nil? && !@identity_sid.null? && identity_sid !~ pattern
        raise ArgumentError.new("invalid value for \"identity_sid\", must conform to the pattern #{pattern}.")
      end

      @identity_sid = identity_sid
    end

    # Custom attribute writer method with validation
    # @param [Object] sid Value to be assigned
    def sid=(sid)
      if !sid.nil? && !@sid.null? && sid.to_s.size > 34
        raise ArgumentError.new("invalid value for \"sid\", the character length must be smaller than or equal to 34.")
      end

      if !sid.nil? && !@sid.null? && sid.to_s.size < 34
        raise ArgumentError.new("invalid value for \"sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^PN[0-9a-fA-F]{32}$/
      if !sid.nil? && !@sid.null? && sid !~ pattern
        raise ArgumentError.new("invalid value for \"sid\", must conform to the pattern #{pattern}.")
      end

      @sid = sid
    end

    # Custom attribute writer method with validation
    # @param [Object] sms_application_sid Value to be assigned
    def sms_application_sid=(sms_application_sid)
      if !sms_application_sid.nil? && !@sms_application_sid.null? && sms_application_sid.to_s.size > 34
        raise ArgumentError.new("invalid value for \"sms_application_sid\", the character length must be smaller than or equal to 34.")
      end

      if !sms_application_sid.nil? && !@sms_application_sid.null? && sms_application_sid.to_s.size < 34
        raise ArgumentError.new("invalid value for \"sms_application_sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^AP[0-9a-fA-F]{32}$/
      if !sms_application_sid.nil? && !@sms_application_sid.null? && sms_application_sid !~ pattern
        raise ArgumentError.new("invalid value for \"sms_application_sid\", must conform to the pattern #{pattern}.")
      end

      @sms_application_sid = sms_application_sid
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] sms_fallback_method Object to be assigned
    def sms_fallback_method=(sms_fallback_method)
      validator = EnumAttributeValidator.new("String", ["HEAD", "GET", "POST", "PATCH", "PUT", "DELETE"])
      unless validator.valid?(sms_fallback_method)
        raise ArgumentError.new("invalid value for \"sms_fallback_method\", must be one of #{validator.allowable_values}.")
      end
      @sms_fallback_method = sms_fallback_method
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] sms_method Object to be assigned
    def sms_method=(sms_method)
      validator = EnumAttributeValidator.new("String", ["HEAD", "GET", "POST", "PATCH", "PUT", "DELETE"])
      unless validator.valid?(sms_method)
        raise ArgumentError.new("invalid value for \"sms_method\", must be one of #{validator.allowable_values}.")
      end
      @sms_method = sms_method
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status_callback_method Object to be assigned
    def status_callback_method=(status_callback_method)
      validator = EnumAttributeValidator.new("String", ["HEAD", "GET", "POST", "PATCH", "PUT", "DELETE"])
      unless validator.valid?(status_callback_method)
        raise ArgumentError.new("invalid value for \"status_callback_method\", must be one of #{validator.allowable_values}.")
      end
      @status_callback_method = status_callback_method
    end

    # Custom attribute writer method with validation
    # @param [Object] trunk_sid Value to be assigned
    def trunk_sid=(trunk_sid)
      if !trunk_sid.nil? && !@trunk_sid.null? && trunk_sid.to_s.size > 34
        raise ArgumentError.new("invalid value for \"trunk_sid\", the character length must be smaller than or equal to 34.")
      end

      if !trunk_sid.nil? && !@trunk_sid.null? && trunk_sid.to_s.size < 34
        raise ArgumentError.new("invalid value for \"trunk_sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^TK[0-9a-fA-F]{32}$/
      if !trunk_sid.nil? && !@trunk_sid.null? && trunk_sid !~ pattern
        raise ArgumentError.new("invalid value for \"trunk_sid\", must conform to the pattern #{pattern}.")
      end

      @trunk_sid = trunk_sid
    end

    # Custom attribute writer method with validation
    # @param [Object] voice_application_sid Value to be assigned
    def voice_application_sid=(voice_application_sid)
      if !voice_application_sid.nil? && !@voice_application_sid.null? && voice_application_sid.to_s.size > 34
        raise ArgumentError.new("invalid value for \"voice_application_sid\", the character length must be smaller than or equal to 34.")
      end

      if !voice_application_sid.nil? && !@voice_application_sid.null? && voice_application_sid.to_s.size < 34
        raise ArgumentError.new("invalid value for \"voice_application_sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^AP[0-9a-fA-F]{32}$/
      if !voice_application_sid.nil? && !@voice_application_sid.null? && voice_application_sid !~ pattern
        raise ArgumentError.new("invalid value for \"voice_application_sid\", must conform to the pattern #{pattern}.")
      end

      @voice_application_sid = voice_application_sid
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] voice_fallback_method Object to be assigned
    def voice_fallback_method=(voice_fallback_method)
      validator = EnumAttributeValidator.new("String", ["HEAD", "GET", "POST", "PATCH", "PUT", "DELETE"])
      unless validator.valid?(voice_fallback_method)
        raise ArgumentError.new("invalid value for \"voice_fallback_method\", must be one of #{validator.allowable_values}.")
      end
      @voice_fallback_method = voice_fallback_method
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] voice_method Object to be assigned
    def voice_method=(voice_method)
      validator = EnumAttributeValidator.new("String", ["HEAD", "GET", "POST", "PATCH", "PUT", "DELETE"])
      unless validator.valid?(voice_method)
        raise ArgumentError.new("invalid value for \"voice_method\", must be one of #{validator.allowable_values}.")
      end
      @voice_method = voice_method
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] voice_receive_mode Object to be assigned
    def voice_receive_mode=(voice_receive_mode)
      validator = EnumAttributeValidator.new("String", ["voice", "fax"])
      unless validator.valid?(voice_receive_mode)
        raise ArgumentError.new("invalid value for \"voice_receive_mode\", must be one of #{validator.allowable_values}.")
      end
      @voice_receive_mode = voice_receive_mode
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.same?(o)
      self.class == o.class &&
        account_sid == o.account_sid &&
        address_requirements == o.address_requirements &&
        address_sid == o.address_sid &&
        api_version == o.api_version &&
        beta == o.beta &&
        bundle_sid == o.bundle_sid &&
        capabilities == o.capabilities &&
        date_created == o.date_created &&
        date_updated == o.date_updated &&
        emergency_address_sid == o.emergency_address_sid &&
        emergency_address_status == o.emergency_address_status &&
        emergency_status == o.emergency_status &&
        friendly_name == o.friendly_name &&
        identity_sid == o.identity_sid &&
        origin == o.origin &&
        phone_number == o.phone_number &&
        sid == o.sid &&
        sms_application_sid == o.sms_application_sid &&
        sms_fallback_method == o.sms_fallback_method &&
        sms_fallback_url == o.sms_fallback_url &&
        sms_method == o.sms_method &&
        sms_url == o.sms_url &&
        status == o.status &&
        status_callback == o.status_callback &&
        status_callback_method == o.status_callback_method &&
        trunk_sid == o.trunk_sid &&
        uri == o.uri &&
        voice_application_sid == o.voice_application_sid &&
        voice_caller_id_lookup == o.voice_caller_id_lookup &&
        voice_fallback_method == o.voice_fallback_method &&
        voice_fallback_url == o.voice_fallback_url &&
        voice_method == o.voice_method &&
        voice_receive_mode == o.voice_receive_mode &&
        voice_url == o.voice_url
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [account_sid, address_requirements, address_sid, api_version, beta, bundle_sid, capabilities, date_created, date_updated, emergency_address_sid, emergency_address_status, emergency_status, friendly_name, identity_sid, origin, phone_number, sid, sms_application_sid, sms_fallback_method, sms_fallback_url, sms_method, sms_url, status, status_callback, status_callback_method, trunk_sid, uri, voice_application_sid, voice_caller_id_lookup, voice_fallback_method, voice_fallback_url, voice_method, voice_receive_mode, voice_url].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if !attributes[self.class.attribute_map[key]]? && self.class.openapi_nullable.includes?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        ({} of String => String).tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = Twilio.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {} of String => String
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.includes?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        ({} of String => String).tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end
  end
end
