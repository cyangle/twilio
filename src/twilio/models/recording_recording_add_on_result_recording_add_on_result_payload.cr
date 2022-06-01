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
  class RecordingRecordingAddOnResultRecordingAddOnResultPayload
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties
    # The SID of the Account that created the resource
    @[JSON::Field(key: "account_sid", type: String?, presence: true, ignore_serialize: account_sid.nil? && !account_sid_present?)]
    getter account_sid : String?

    @[JSON::Field(ignore: true)]
    property? account_sid_present : Bool = false

    # The SID of the Add-on configuration
    @[JSON::Field(key: "add_on_configuration_sid", type: String?, presence: true, ignore_serialize: add_on_configuration_sid.nil? && !add_on_configuration_sid_present?)]
    getter add_on_configuration_sid : String?

    @[JSON::Field(ignore: true)]
    property? add_on_configuration_sid_present : Bool = false

    # The SID of the AddOnResult to which the payload belongs
    @[JSON::Field(key: "add_on_result_sid", type: String?, presence: true, ignore_serialize: add_on_result_sid.nil? && !add_on_result_sid_present?)]
    getter add_on_result_sid : String?

    @[JSON::Field(ignore: true)]
    property? add_on_result_sid_present : Bool = false

    # The SID of the Add-on to which the result belongs
    @[JSON::Field(key: "add_on_sid", type: String?, presence: true, ignore_serialize: add_on_sid.nil? && !add_on_sid_present?)]
    getter add_on_sid : String?

    @[JSON::Field(ignore: true)]
    property? add_on_sid_present : Bool = false

    # The MIME type of the payload
    @[JSON::Field(key: "content_type", type: String?, presence: true, ignore_serialize: content_type.nil? && !content_type_present?)]
    property content_type : String?

    @[JSON::Field(ignore: true)]
    property? content_type_present : Bool = false

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

    # The string that describes the payload
    @[JSON::Field(key: "label", type: String?, presence: true, ignore_serialize: label.nil? && !label_present?)]
    property label : String?

    @[JSON::Field(ignore: true)]
    property? label_present : Bool = false

    # The SID of the recording to which the AddOnResult resource that contains the payload belongs
    @[JSON::Field(key: "reference_sid", type: String?, presence: true, ignore_serialize: reference_sid.nil? && !reference_sid_present?)]
    getter reference_sid : String?

    @[JSON::Field(ignore: true)]
    property? reference_sid_present : Bool = false

    # The unique string that identifies the resource
    @[JSON::Field(key: "sid", type: String?, presence: true, ignore_serialize: sid.nil? && !sid_present?)]
    getter sid : String?

    @[JSON::Field(ignore: true)]
    property? sid_present : Bool = false

    # Account Instance Subresources
    @[JSON::Field(key: "subresource_uris", type: Hash(String, String)?, presence: true, ignore_serialize: subresource_uris.nil? && !subresource_uris_present?)]
    property subresource_uris : Hash(String, String)?

    @[JSON::Field(ignore: true)]
    property? subresource_uris_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(*, @account_sid : String? = nil, @add_on_configuration_sid : String? = nil, @add_on_result_sid : String? = nil, @add_on_sid : String? = nil, @content_type : String? = nil, @date_created : Time? = nil, @date_updated : Time? = nil, @label : String? = nil, @reference_sid : String? = nil, @sid : String? = nil, @subresource_uris : Hash(String, String)? = nil)
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

      if !@add_on_configuration_sid.nil? && @add_on_configuration_sid.to_s.size > 34
        invalid_properties.push("invalid value for \"add_on_configuration_sid\", the character length must be smaller than or equal to 34.")
      end

      if !@add_on_configuration_sid.nil? && @add_on_configuration_sid.to_s.size < 34
        invalid_properties.push("invalid value for \"add_on_configuration_sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^XE[0-9a-fA-F]{32}$/
      if !@add_on_configuration_sid.nil? && @add_on_configuration_sid !~ pattern
        invalid_properties.push("invalid value for \"add_on_configuration_sid\", must conform to the pattern #{pattern}.")
      end

      if !@add_on_result_sid.nil? && @add_on_result_sid.to_s.size > 34
        invalid_properties.push("invalid value for \"add_on_result_sid\", the character length must be smaller than or equal to 34.")
      end

      if !@add_on_result_sid.nil? && @add_on_result_sid.to_s.size < 34
        invalid_properties.push("invalid value for \"add_on_result_sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^XR[0-9a-fA-F]{32}$/
      if !@add_on_result_sid.nil? && @add_on_result_sid !~ pattern
        invalid_properties.push("invalid value for \"add_on_result_sid\", must conform to the pattern #{pattern}.")
      end

      if !@add_on_sid.nil? && @add_on_sid.to_s.size > 34
        invalid_properties.push("invalid value for \"add_on_sid\", the character length must be smaller than or equal to 34.")
      end

      if !@add_on_sid.nil? && @add_on_sid.to_s.size < 34
        invalid_properties.push("invalid value for \"add_on_sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^XB[0-9a-fA-F]{32}$/
      if !@add_on_sid.nil? && @add_on_sid !~ pattern
        invalid_properties.push("invalid value for \"add_on_sid\", must conform to the pattern #{pattern}.")
      end

      if !@reference_sid.nil? && @reference_sid.to_s.size > 34
        invalid_properties.push("invalid value for \"reference_sid\", the character length must be smaller than or equal to 34.")
      end

      if !@reference_sid.nil? && @reference_sid.to_s.size < 34
        invalid_properties.push("invalid value for \"reference_sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^RE[0-9a-fA-F]{32}$/
      if !@reference_sid.nil? && @reference_sid !~ pattern
        invalid_properties.push("invalid value for \"reference_sid\", must conform to the pattern #{pattern}.")
      end

      if !@sid.nil? && @sid.to_s.size > 34
        invalid_properties.push("invalid value for \"sid\", the character length must be smaller than or equal to 34.")
      end

      if !@sid.nil? && @sid.to_s.size < 34
        invalid_properties.push("invalid value for \"sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^XH[0-9a-fA-F]{32}$/
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
      return false if !@add_on_configuration_sid.nil? && @add_on_configuration_sid.to_s.size > 34
      return false if !@add_on_configuration_sid.nil? && @add_on_configuration_sid.to_s.size < 34
      return false if !@add_on_configuration_sid.nil? && @add_on_configuration_sid !~ /^XE[0-9a-fA-F]{32}$/
      return false if !@add_on_result_sid.nil? && @add_on_result_sid.to_s.size > 34
      return false if !@add_on_result_sid.nil? && @add_on_result_sid.to_s.size < 34
      return false if !@add_on_result_sid.nil? && @add_on_result_sid !~ /^XR[0-9a-fA-F]{32}$/
      return false if !@add_on_sid.nil? && @add_on_sid.to_s.size > 34
      return false if !@add_on_sid.nil? && @add_on_sid.to_s.size < 34
      return false if !@add_on_sid.nil? && @add_on_sid !~ /^XB[0-9a-fA-F]{32}$/
      return false if !@reference_sid.nil? && @reference_sid.to_s.size > 34
      return false if !@reference_sid.nil? && @reference_sid.to_s.size < 34
      return false if !@reference_sid.nil? && @reference_sid !~ /^RE[0-9a-fA-F]{32}$/
      return false if !@sid.nil? && @sid.to_s.size > 34
      return false if !@sid.nil? && @sid.to_s.size < 34
      return false if !@sid.nil? && @sid !~ /^XH[0-9a-fA-F]{32}$/
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
    # @param [Object] add_on_configuration_sid Value to be assigned
    def add_on_configuration_sid=(add_on_configuration_sid)
      if !add_on_configuration_sid.nil? && add_on_configuration_sid.to_s.size > 34
        raise ArgumentError.new("invalid value for \"add_on_configuration_sid\", the character length must be smaller than or equal to 34.")
      end

      if !add_on_configuration_sid.nil? && add_on_configuration_sid.to_s.size < 34
        raise ArgumentError.new("invalid value for \"add_on_configuration_sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^XE[0-9a-fA-F]{32}$/
      if !add_on_configuration_sid.nil? && add_on_configuration_sid !~ pattern
        raise ArgumentError.new("invalid value for \"add_on_configuration_sid\", must conform to the pattern #{pattern}.")
      end

      @add_on_configuration_sid = add_on_configuration_sid
    end

    # Custom attribute writer method with validation
    # @param [Object] add_on_result_sid Value to be assigned
    def add_on_result_sid=(add_on_result_sid)
      if !add_on_result_sid.nil? && add_on_result_sid.to_s.size > 34
        raise ArgumentError.new("invalid value for \"add_on_result_sid\", the character length must be smaller than or equal to 34.")
      end

      if !add_on_result_sid.nil? && add_on_result_sid.to_s.size < 34
        raise ArgumentError.new("invalid value for \"add_on_result_sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^XR[0-9a-fA-F]{32}$/
      if !add_on_result_sid.nil? && add_on_result_sid !~ pattern
        raise ArgumentError.new("invalid value for \"add_on_result_sid\", must conform to the pattern #{pattern}.")
      end

      @add_on_result_sid = add_on_result_sid
    end

    # Custom attribute writer method with validation
    # @param [Object] add_on_sid Value to be assigned
    def add_on_sid=(add_on_sid)
      if !add_on_sid.nil? && add_on_sid.to_s.size > 34
        raise ArgumentError.new("invalid value for \"add_on_sid\", the character length must be smaller than or equal to 34.")
      end

      if !add_on_sid.nil? && add_on_sid.to_s.size < 34
        raise ArgumentError.new("invalid value for \"add_on_sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^XB[0-9a-fA-F]{32}$/
      if !add_on_sid.nil? && add_on_sid !~ pattern
        raise ArgumentError.new("invalid value for \"add_on_sid\", must conform to the pattern #{pattern}.")
      end

      @add_on_sid = add_on_sid
    end

    # Custom attribute writer method with validation
    # @param [Object] reference_sid Value to be assigned
    def reference_sid=(reference_sid)
      if !reference_sid.nil? && reference_sid.to_s.size > 34
        raise ArgumentError.new("invalid value for \"reference_sid\", the character length must be smaller than or equal to 34.")
      end

      if !reference_sid.nil? && reference_sid.to_s.size < 34
        raise ArgumentError.new("invalid value for \"reference_sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^RE[0-9a-fA-F]{32}$/
      if !reference_sid.nil? && reference_sid !~ pattern
        raise ArgumentError.new("invalid value for \"reference_sid\", must conform to the pattern #{pattern}.")
      end

      @reference_sid = reference_sid
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

      pattern = /^XH[0-9a-fA-F]{32}$/
      if !sid.nil? && sid !~ pattern
        raise ArgumentError.new("invalid value for \"sid\", must conform to the pattern #{pattern}.")
      end

      @sid = sid
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.same?(o)
      self.class == o.class &&
        account_sid == o.account_sid &&
        add_on_configuration_sid == o.add_on_configuration_sid &&
        add_on_result_sid == o.add_on_result_sid &&
        add_on_sid == o.add_on_sid &&
        content_type == o.content_type &&
        date_created == o.date_created &&
        date_updated == o.date_updated &&
        label == o.label &&
        reference_sid == o.reference_sid &&
        sid == o.sid &&
        subresource_uris == o.subresource_uris
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [UInt64] Hash code
    def_hash(@account_sid, @add_on_configuration_sid, @add_on_result_sid, @add_on_sid, @content_type, @date_created, @date_updated, @label, @reference_sid, @sid, @subresource_uris)
  end
end
