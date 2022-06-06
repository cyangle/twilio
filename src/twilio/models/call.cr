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
  class Call
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    # The SID of the Account that created this resource
    @[JSON::Field(key: "account_sid", type: String?, presence: true, ignore_serialize: account_sid.nil? && !account_sid_present?)]
    getter account_sid : String?

    @[JSON::Field(ignore: true)]
    property? account_sid_present : Bool = false

    # Either `human` or `machine` if this call was initiated with answering machine detection. Empty otherwise.
    @[JSON::Field(key: "answered_by", type: String?, presence: true, ignore_serialize: answered_by.nil? && !answered_by_present?)]
    property answered_by : String?

    @[JSON::Field(ignore: true)]
    property? answered_by_present : Bool = false

    # The API Version used to create the call
    @[JSON::Field(key: "api_version", type: String?, presence: true, ignore_serialize: api_version.nil? && !api_version_present?)]
    property api_version : String?

    @[JSON::Field(ignore: true)]
    property? api_version_present : Bool = false

    # The caller's name if this call was an incoming call to a phone number with caller ID Lookup enabled. Otherwise, empty.
    @[JSON::Field(key: "caller_name", type: String?, presence: true, ignore_serialize: caller_name.nil? && !caller_name_present?)]
    property caller_name : String?

    @[JSON::Field(ignore: true)]
    property? caller_name_present : Bool = false

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

    # A string describing the direction of the call. `inbound` for inbound calls, `outbound-api` for calls initiated via the REST API or `outbound-dial` for calls initiated by a `Dial` verb.
    @[JSON::Field(key: "direction", type: String?, presence: true, ignore_serialize: direction.nil? && !direction_present?)]
    property direction : String?

    @[JSON::Field(ignore: true)]
    property? direction_present : Bool = false

    # The length of the call in seconds.
    @[JSON::Field(key: "duration", type: String?, presence: true, ignore_serialize: duration.nil? && !duration_present?)]
    property duration : String?

    @[JSON::Field(ignore: true)]
    property? duration_present : Bool = false

    # The end time of the call. Null if the call did not complete successfully.
    @[JSON::Field(key: "end_time", type: Time?, converter: Time::RFC2822Converter, presence: true, ignore_serialize: end_time.nil? && !end_time_present?)]
    property end_time : Time?

    @[JSON::Field(ignore: true)]
    property? end_time_present : Bool = false

    # The forwarding phone number if this call was an incoming call forwarded from another number (depends on carrier supporting forwarding). Otherwise, empty.
    @[JSON::Field(key: "forwarded_from", type: String?, presence: true, ignore_serialize: forwarded_from.nil? && !forwarded_from_present?)]
    property forwarded_from : String?

    @[JSON::Field(ignore: true)]
    property? forwarded_from_present : Bool = false

    # The phone number, SIP address or Client identifier that made this call. Phone numbers are in E.164 format (e.g., +16175551212). SIP addresses are formatted as `name@company.com`. Client identifiers are formatted `client:name`.
    @[JSON::Field(key: "from", type: String?, presence: true, ignore_serialize: from.nil? && !from_present?)]
    property from : String?

    @[JSON::Field(ignore: true)]
    property? from_present : Bool = false

    # The calling phone number, SIP address, or Client identifier formatted for display.
    @[JSON::Field(key: "from_formatted", type: String?, presence: true, ignore_serialize: from_formatted.nil? && !from_formatted_present?)]
    property from_formatted : String?

    @[JSON::Field(ignore: true)]
    property? from_formatted_present : Bool = false

    # The Group SID associated with this call. If no Group is associated with the call, the field is empty.
    @[JSON::Field(key: "group_sid", type: String?, presence: true, ignore_serialize: group_sid.nil? && !group_sid_present?)]
    getter group_sid : String?

    @[JSON::Field(ignore: true)]
    property? group_sid_present : Bool = false

    # The SID that identifies the call that created this leg.
    @[JSON::Field(key: "parent_call_sid", type: String?, presence: true, ignore_serialize: parent_call_sid.nil? && !parent_call_sid_present?)]
    getter parent_call_sid : String?

    @[JSON::Field(ignore: true)]
    property? parent_call_sid_present : Bool = false

    # If the call was inbound, this is the SID of the IncomingPhoneNumber resource that received the call. If the call was outbound, it is the SID of the OutgoingCallerId resource from which the call was placed.
    @[JSON::Field(key: "phone_number_sid", type: String?, presence: true, ignore_serialize: phone_number_sid.nil? && !phone_number_sid_present?)]
    getter phone_number_sid : String?

    @[JSON::Field(ignore: true)]
    property? phone_number_sid_present : Bool = false

    # The charge for this call, in the currency associated with the account. Populated after the call is completed. May not be immediately available.
    @[JSON::Field(key: "price", type: String?, presence: true, ignore_serialize: price.nil? && !price_present?)]
    property price : String?

    @[JSON::Field(ignore: true)]
    property? price_present : Bool = false

    # The currency in which `Price` is measured.
    @[JSON::Field(key: "price_unit", type: String?, presence: true, ignore_serialize: price_unit.nil? && !price_unit_present?)]
    property price_unit : String?

    @[JSON::Field(ignore: true)]
    property? price_unit_present : Bool = false

    # The wait time in milliseconds before the call is placed.
    @[JSON::Field(key: "queue_time", type: String?, presence: true, ignore_serialize: queue_time.nil? && !queue_time_present?)]
    property queue_time : String?

    @[JSON::Field(ignore: true)]
    property? queue_time_present : Bool = false

    # The unique string that identifies this resource
    @[JSON::Field(key: "sid", type: String?, presence: true, ignore_serialize: sid.nil? && !sid_present?)]
    getter sid : String?

    @[JSON::Field(ignore: true)]
    property? sid_present : Bool = false

    # The start time of the call. Null if the call has not yet been dialed.
    @[JSON::Field(key: "start_time", type: Time?, converter: Time::RFC2822Converter, presence: true, ignore_serialize: start_time.nil? && !start_time_present?)]
    property start_time : Time?

    @[JSON::Field(ignore: true)]
    property? start_time_present : Bool = false

    # The status of this call.
    @[JSON::Field(key: "status", type: String?, presence: true, ignore_serialize: status.nil? && !status_present?)]
    getter status : String?

    @[JSON::Field(ignore: true)]
    property? status_present : Bool = false

    ENUM_VALIDATOR_FOR_STATUS = EnumValidator.new("status", "String", ["queued", "ringing", "in-progress", "completed", "busy", "failed", "no-answer", "canceled"])

    # Account Instance Subresources
    @[JSON::Field(key: "subresource_uris", type: Hash(String, String)?, presence: true, ignore_serialize: subresource_uris.nil? && !subresource_uris_present?)]
    property subresource_uris : Hash(String, String)?

    @[JSON::Field(ignore: true)]
    property? subresource_uris_present : Bool = false

    # The phone number, SIP address or Client identifier that received this call. Phone numbers are in E.164 format (e.g., +16175551212). SIP addresses are formatted as `name@company.com`. Client identifiers are formatted `client:name`.
    @[JSON::Field(key: "to", type: String?, presence: true, ignore_serialize: to.nil? && !to_present?)]
    property to : String?

    @[JSON::Field(ignore: true)]
    property? to_present : Bool = false

    # The phone number, SIP address or Client identifier that received this call. Formatted for display.
    @[JSON::Field(key: "to_formatted", type: String?, presence: true, ignore_serialize: to_formatted.nil? && !to_formatted_present?)]
    property to_formatted : String?

    @[JSON::Field(ignore: true)]
    property? to_formatted_present : Bool = false

    # The (optional) unique identifier of the trunk resource that was used for this call.
    @[JSON::Field(key: "trunk_sid", type: String?, presence: true, ignore_serialize: trunk_sid.nil? && !trunk_sid_present?)]
    getter trunk_sid : String?

    @[JSON::Field(ignore: true)]
    property? trunk_sid_present : Bool = false

    # The URI of this resource, relative to `https://api.twilio.com`
    @[JSON::Field(key: "uri", type: String?, presence: true, ignore_serialize: uri.nil? && !uri_present?)]
    property uri : String?

    @[JSON::Field(ignore: true)]
    property? uri_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @account_sid : String? = nil,
      @answered_by : String? = nil,
      @api_version : String? = nil,
      @caller_name : String? = nil,
      @date_created : Time? = nil,
      @date_updated : Time? = nil,
      @direction : String? = nil,
      @duration : String? = nil,
      @end_time : Time? = nil,
      @forwarded_from : String? = nil,
      @from : String? = nil,
      @from_formatted : String? = nil,
      @group_sid : String? = nil,
      @parent_call_sid : String? = nil,
      @phone_number_sid : String? = nil,
      @price : String? = nil,
      @price_unit : String? = nil,
      @queue_time : String? = nil,
      @sid : String? = nil,
      @start_time : Time? = nil,
      @status : String? = nil,
      @subresource_uris : Hash(String, String)? = nil,
      @to : String? = nil,
      @to_formatted : String? = nil,
      @trunk_sid : String? = nil,
      @uri : String? = nil
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

      if !@group_sid.nil? && @group_sid.to_s.size > 34
        invalid_properties.push("invalid value for \"group_sid\", the character length must be smaller than or equal to 34.")
      end

      if !@group_sid.nil? && @group_sid.to_s.size < 34
        invalid_properties.push("invalid value for \"group_sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^GP[0-9a-fA-F]{32}$/
      if !@group_sid.nil? && @group_sid !~ pattern
        invalid_properties.push("invalid value for \"group_sid\", must conform to the pattern #{pattern}.")
      end

      if !@parent_call_sid.nil? && @parent_call_sid.to_s.size > 34
        invalid_properties.push("invalid value for \"parent_call_sid\", the character length must be smaller than or equal to 34.")
      end

      if !@parent_call_sid.nil? && @parent_call_sid.to_s.size < 34
        invalid_properties.push("invalid value for \"parent_call_sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^CA[0-9a-fA-F]{32}$/
      if !@parent_call_sid.nil? && @parent_call_sid !~ pattern
        invalid_properties.push("invalid value for \"parent_call_sid\", must conform to the pattern #{pattern}.")
      end

      if !@phone_number_sid.nil? && @phone_number_sid.to_s.size > 34
        invalid_properties.push("invalid value for \"phone_number_sid\", the character length must be smaller than or equal to 34.")
      end

      if !@phone_number_sid.nil? && @phone_number_sid.to_s.size < 34
        invalid_properties.push("invalid value for \"phone_number_sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^PN[0-9a-fA-F]{32}$/
      if !@phone_number_sid.nil? && @phone_number_sid !~ pattern
        invalid_properties.push("invalid value for \"phone_number_sid\", must conform to the pattern #{pattern}.")
      end

      if !@sid.nil? && @sid.to_s.size > 34
        invalid_properties.push("invalid value for \"sid\", the character length must be smaller than or equal to 34.")
      end

      if !@sid.nil? && @sid.to_s.size < 34
        invalid_properties.push("invalid value for \"sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^CA[0-9a-fA-F]{32}$/
      if !@sid.nil? && @sid !~ pattern
        invalid_properties.push("invalid value for \"sid\", must conform to the pattern #{pattern}.")
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR_STATUS.error_message) unless ENUM_VALIDATOR_FOR_STATUS.valid?(@status)

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

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@account_sid.nil? && @account_sid.to_s.size > 34
      return false if !@account_sid.nil? && @account_sid.to_s.size < 34
      return false if !@account_sid.nil? && @account_sid !~ /^AC[0-9a-fA-F]{32}$/
      return false if !@group_sid.nil? && @group_sid.to_s.size > 34
      return false if !@group_sid.nil? && @group_sid.to_s.size < 34
      return false if !@group_sid.nil? && @group_sid !~ /^GP[0-9a-fA-F]{32}$/
      return false if !@parent_call_sid.nil? && @parent_call_sid.to_s.size > 34
      return false if !@parent_call_sid.nil? && @parent_call_sid.to_s.size < 34
      return false if !@parent_call_sid.nil? && @parent_call_sid !~ /^CA[0-9a-fA-F]{32}$/
      return false if !@phone_number_sid.nil? && @phone_number_sid.to_s.size > 34
      return false if !@phone_number_sid.nil? && @phone_number_sid.to_s.size < 34
      return false if !@phone_number_sid.nil? && @phone_number_sid !~ /^PN[0-9a-fA-F]{32}$/
      return false if !@sid.nil? && @sid.to_s.size > 34
      return false if !@sid.nil? && @sid.to_s.size < 34
      return false if !@sid.nil? && @sid !~ /^CA[0-9a-fA-F]{32}$/
      return false unless ENUM_VALIDATOR_FOR_STATUS.valid?(@status)
      return false if !@trunk_sid.nil? && @trunk_sid.to_s.size > 34
      return false if !@trunk_sid.nil? && @trunk_sid.to_s.size < 34
      return false if !@trunk_sid.nil? && @trunk_sid !~ /^TK[0-9a-fA-F]{32}$/

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

    # Custom attribute writer method with validation
    # @param [Object] group_sid Value to be assigned
    def group_sid=(group_sid : String?)
      if !group_sid.nil? && group_sid.to_s.size > 34
        raise ArgumentError.new("invalid value for \"group_sid\", the character length must be smaller than or equal to 34.")
      end

      if !group_sid.nil? && group_sid.to_s.size < 34
        raise ArgumentError.new("invalid value for \"group_sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^GP[0-9a-fA-F]{32}$/
      if !group_sid.nil? && group_sid !~ pattern
        raise ArgumentError.new("invalid value for \"group_sid\", must conform to the pattern #{pattern}.")
      end

      @group_sid = group_sid
    end

    # Custom attribute writer method with validation
    # @param [Object] parent_call_sid Value to be assigned
    def parent_call_sid=(parent_call_sid : String?)
      if !parent_call_sid.nil? && parent_call_sid.to_s.size > 34
        raise ArgumentError.new("invalid value for \"parent_call_sid\", the character length must be smaller than or equal to 34.")
      end

      if !parent_call_sid.nil? && parent_call_sid.to_s.size < 34
        raise ArgumentError.new("invalid value for \"parent_call_sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^CA[0-9a-fA-F]{32}$/
      if !parent_call_sid.nil? && parent_call_sid !~ pattern
        raise ArgumentError.new("invalid value for \"parent_call_sid\", must conform to the pattern #{pattern}.")
      end

      @parent_call_sid = parent_call_sid
    end

    # Custom attribute writer method with validation
    # @param [Object] phone_number_sid Value to be assigned
    def phone_number_sid=(phone_number_sid : String?)
      if !phone_number_sid.nil? && phone_number_sid.to_s.size > 34
        raise ArgumentError.new("invalid value for \"phone_number_sid\", the character length must be smaller than or equal to 34.")
      end

      if !phone_number_sid.nil? && phone_number_sid.to_s.size < 34
        raise ArgumentError.new("invalid value for \"phone_number_sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^PN[0-9a-fA-F]{32}$/
      if !phone_number_sid.nil? && phone_number_sid !~ pattern
        raise ArgumentError.new("invalid value for \"phone_number_sid\", must conform to the pattern #{pattern}.")
      end

      @phone_number_sid = phone_number_sid
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

      pattern = /^CA[0-9a-fA-F]{32}$/
      if !sid.nil? && sid !~ pattern
        raise ArgumentError.new("invalid value for \"sid\", must conform to the pattern #{pattern}.")
      end

      @sid = sid
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status : String?)
      ENUM_VALIDATOR_FOR_STATUS.valid!(status)
      @status = status
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

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@account_sid, @account_sid_present, @answered_by, @answered_by_present, @api_version, @api_version_present, @caller_name, @caller_name_present, @date_created, @date_created_present, @date_updated, @date_updated_present, @direction, @direction_present, @duration, @duration_present, @end_time, @end_time_present, @forwarded_from, @forwarded_from_present, @from, @from_present, @from_formatted, @from_formatted_present, @group_sid, @group_sid_present, @parent_call_sid, @parent_call_sid_present, @phone_number_sid, @phone_number_sid_present, @price, @price_present, @price_unit, @price_unit_present, @queue_time, @queue_time_present, @sid, @sid_present, @start_time, @start_time_present, @status, @status_present, @subresource_uris, @subresource_uris_present, @to, @to_present, @to_formatted, @to_formatted_present, @trunk_sid, @trunk_sid_present, @uri, @uri_present)
  end
end
