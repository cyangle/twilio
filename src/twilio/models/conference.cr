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
  class Conference
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties
    # The SID of the Account that created this resource
    @[JSON::Field(key: "account_sid", type: String?, presence: true, ignore_serialize: account_sid.nil? && !account_sid_present?)]
    property account_sid : String?

    @[JSON::Field(ignore: true)]
    property? account_sid_present : Bool = false

    # The API version used to create this conference
    @[JSON::Field(key: "api_version", type: String?, presence: true, ignore_serialize: api_version.nil? && !api_version_present?)]
    property api_version : String?

    @[JSON::Field(ignore: true)]
    property? api_version_present : Bool = false

    # The call SID that caused the conference to end
    @[JSON::Field(key: "call_sid_ending_conference", type: String?, presence: true, ignore_serialize: call_sid_ending_conference.nil? && !call_sid_ending_conference_present?)]
    property call_sid_ending_conference : String?

    @[JSON::Field(ignore: true)]
    property? call_sid_ending_conference_present : Bool = false

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

    # A string that you assigned to describe this conference room
    @[JSON::Field(key: "friendly_name", type: String?, presence: true, ignore_serialize: friendly_name.nil? && !friendly_name_present?)]
    property friendly_name : String?

    @[JSON::Field(ignore: true)]
    property? friendly_name_present : Bool = false

    # The reason why a conference ended.
    @[JSON::Field(key: "reason_conference_ended", type: String?, presence: true, ignore_serialize: reason_conference_ended.nil? && !reason_conference_ended_present?)]
    property reason_conference_ended : String?

    @[JSON::Field(ignore: true)]
    property? reason_conference_ended_present : Bool = false

    # A string that represents the Twilio Region where the conference was mixed
    @[JSON::Field(key: "region", type: String?, presence: true, ignore_serialize: region.nil? && !region_present?)]
    property region : String?

    @[JSON::Field(ignore: true)]
    property? region_present : Bool = false

    # The unique string that identifies this resource
    @[JSON::Field(key: "sid", type: String?, presence: true, ignore_serialize: sid.nil? && !sid_present?)]
    property sid : String?

    @[JSON::Field(ignore: true)]
    property? sid_present : Bool = false

    # The status of this conference
    @[JSON::Field(key: "status", type: String?, presence: true, ignore_serialize: status.nil? && !status_present?)]
    property status : String?

    @[JSON::Field(ignore: true)]
    property? status_present : Bool = false

    # Account Instance Subresources
    @[JSON::Field(key: "subresource_uris", type: Hash(String, String)?, presence: true, ignore_serialize: subresource_uris.nil? && !subresource_uris_present?)]
    property subresource_uris : Hash(String, String)?

    @[JSON::Field(ignore: true)]
    property? subresource_uris_present : Bool = false

    # The URI of this resource, relative to `https://api.twilio.com`
    @[JSON::Field(key: "uri", type: String?, presence: true, ignore_serialize: uri.nil? && !uri_present?)]
    property uri : String?

    @[JSON::Field(ignore: true)]
    property? uri_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(*, @account_sid : String? = nil, @api_version : String? = nil, @call_sid_ending_conference : String? = nil, @date_created : Time? = nil, @date_updated : Time? = nil, @friendly_name : String? = nil, @reason_conference_ended : String? = nil, @region : String? = nil, @sid : String? = nil, @status : String? = nil, @subresource_uris : Hash(String, String)? = nil, @uri : String? = nil)
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

      if !@call_sid_ending_conference.nil? && @call_sid_ending_conference.to_s.size > 34
        invalid_properties.push("invalid value for \"call_sid_ending_conference\", the character length must be smaller than or equal to 34.")
      end

      if !@call_sid_ending_conference.nil? && @call_sid_ending_conference.to_s.size < 34
        invalid_properties.push("invalid value for \"call_sid_ending_conference\", the character length must be great than or equal to 34.")
      end

      pattern = /^CA[0-9a-fA-F]{32}$/
      if !@call_sid_ending_conference.nil? && @call_sid_ending_conference !~ pattern
        invalid_properties.push("invalid value for \"call_sid_ending_conference\", must conform to the pattern #{pattern}.")
      end

      if !@sid.nil? && @sid.to_s.size > 34
        invalid_properties.push("invalid value for \"sid\", the character length must be smaller than or equal to 34.")
      end

      if !@sid.nil? && @sid.to_s.size < 34
        invalid_properties.push("invalid value for \"sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^CF[0-9a-fA-F]{32}$/
      if !@sid.nil? && @sid !~ pattern
        invalid_properties.push("invalid value for \"sid\", must conform to the pattern #{pattern}.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@account_sid.nil? && @account_sid.to_s.size > 34
      return false if !@account_sid.nil? && @account_sid.to_s.size < 34
      return false if !@account_sid.nil? && @account_sid !~ /^AC[0-9a-fA-F]{32}$/
      return false if !@call_sid_ending_conference.nil? && @call_sid_ending_conference.to_s.size > 34
      return false if !@call_sid_ending_conference.nil? && @call_sid_ending_conference.to_s.size < 34
      return false if !@call_sid_ending_conference.nil? && @call_sid_ending_conference !~ /^CA[0-9a-fA-F]{32}$/
      reason_conference_ended_validator = EnumValidator.new("String", ["conference-ended-via-api", "participant-with-end-conference-on-exit-left", "participant-with-end-conference-on-exit-kicked", "last-participant-kicked", "last-participant-left"])
      return false unless reason_conference_ended_validator.valid?(@reason_conference_ended)
      return false if !@sid.nil? && @sid.to_s.size > 34
      return false if !@sid.nil? && @sid.to_s.size < 34
      return false if !@sid.nil? && @sid !~ /^CF[0-9a-fA-F]{32}$/
      status_validator = EnumValidator.new("String", ["init", "in-progress", "completed"])
      return false unless status_validator.valid?(@status)
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
    # @param [Object] call_sid_ending_conference Value to be assigned
    def call_sid_ending_conference=(call_sid_ending_conference)
      if !call_sid_ending_conference.nil? && call_sid_ending_conference.to_s.size > 34
        raise ArgumentError.new("invalid value for \"call_sid_ending_conference\", the character length must be smaller than or equal to 34.")
      end

      if !call_sid_ending_conference.nil? && call_sid_ending_conference.to_s.size < 34
        raise ArgumentError.new("invalid value for \"call_sid_ending_conference\", the character length must be great than or equal to 34.")
      end

      pattern = /^CA[0-9a-fA-F]{32}$/
      if !call_sid_ending_conference.nil? && call_sid_ending_conference !~ pattern
        raise ArgumentError.new("invalid value for \"call_sid_ending_conference\", must conform to the pattern #{pattern}.")
      end

      @call_sid_ending_conference = call_sid_ending_conference
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] reason_conference_ended Object to be assigned
    def reason_conference_ended=(reason_conference_ended)
      validator = EnumValidator.new("String", ["conference-ended-via-api", "participant-with-end-conference-on-exit-left", "participant-with-end-conference-on-exit-kicked", "last-participant-kicked", "last-participant-left"])
      unless validator.valid?(reason_conference_ended)
        raise ArgumentError.new("invalid value for \"reason_conference_ended\", must be one of #{validator.allowable_values}.")
      end
      @reason_conference_ended = reason_conference_ended
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

      pattern = /^CF[0-9a-fA-F]{32}$/
      if !sid.nil? && sid !~ pattern
        raise ArgumentError.new("invalid value for \"sid\", must conform to the pattern #{pattern}.")
      end

      @sid = sid
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumValidator.new("String", ["init", "in-progress", "completed"])
      unless validator.valid?(status)
        raise ArgumentError.new("invalid value for \"status\", must be one of #{validator.allowable_values}.")
      end
      @status = status
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.same?(o)
      self.class == o.class &&
        account_sid == o.account_sid &&
        api_version == o.api_version &&
        call_sid_ending_conference == o.call_sid_ending_conference &&
        date_created == o.date_created &&
        date_updated == o.date_updated &&
        friendly_name == o.friendly_name &&
        reason_conference_ended == o.reason_conference_ended &&
        region == o.region &&
        sid == o.sid &&
        status == o.status &&
        subresource_uris == o.subresource_uris &&
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
      [account_sid, api_version, call_sid_ending_conference, date_created, date_updated, friendly_name, reason_conference_ended, region, sid, status, subresource_uris, uri].hash
    end
  end
end
