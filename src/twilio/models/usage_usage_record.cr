#  Twilio - Api
#
# This is the public Twilio REST API.
#
# The version of the OpenAPI document: 1.38.0
# Contact: support@twilio.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./usage_record_enum_category"

module Twilio
  class UsageUsageRecord
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # The SID of the Account accrued the usage
    @[JSON::Field(key: "account_sid", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: account_sid.nil? && !account_sid_present?)]
    getter account_sid : String? = nil
    MAX_LENGTH_FOR_ACCOUNT_SID = 34
    MIN_LENGTH_FOR_ACCOUNT_SID = 34
    PATTERN_FOR_ACCOUNT_SID    = /^AC[0-9a-fA-F]{32}$/

    @[JSON::Field(ignore: true)]
    property? account_sid_present : Bool = false

    # The API version used to create the resource
    @[JSON::Field(key: "api_version", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: api_version.nil? && !api_version_present?)]
    getter api_version : String? = nil

    @[JSON::Field(ignore: true)]
    property? api_version_present : Bool = false

    # Usage records up to date as of this timestamp
    @[JSON::Field(key: "as_of", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: as_of.nil? && !as_of_present?)]
    getter as_of : String? = nil

    @[JSON::Field(ignore: true)]
    property? as_of_present : Bool = false

    @[JSON::Field(key: "category", type: Twilio::UsageRecordEnumCategory?, default: nil, required: false, nullable: false, emit_null: false)]
    getter category : Twilio::UsageRecordEnumCategory? = nil

    # The number of usage events
    @[JSON::Field(key: "count", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: count.nil? && !count_present?)]
    getter count : String? = nil

    @[JSON::Field(ignore: true)]
    property? count_present : Bool = false

    # The units in which count is measured
    @[JSON::Field(key: "count_unit", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: count_unit.nil? && !count_unit_present?)]
    getter count_unit : String? = nil

    @[JSON::Field(ignore: true)]
    property? count_unit_present : Bool = false

    # A plain-language description of the usage category
    @[JSON::Field(key: "description", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: description.nil? && !description_present?)]
    getter description : String? = nil

    @[JSON::Field(ignore: true)]
    property? description_present : Bool = false

    # The last date for which usage is included in the UsageRecord
    @[JSON::Field(key: "end_date", type: Time?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: end_date.nil? && !end_date_present?, converter: Time::ISO8601DateConverter)]
    getter end_date : Time? = nil

    @[JSON::Field(ignore: true)]
    property? end_date_present : Bool = false

    # The total price of the usage
    @[JSON::Field(key: "price", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: price.nil? && !price_present?)]
    getter price : String? = nil

    @[JSON::Field(ignore: true)]
    property? price_present : Bool = false

    # The currency in which `price` is measured
    @[JSON::Field(key: "price_unit", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: price_unit.nil? && !price_unit_present?)]
    getter price_unit : String? = nil

    @[JSON::Field(ignore: true)]
    property? price_unit_present : Bool = false

    # The first date for which usage is included in this UsageRecord
    @[JSON::Field(key: "start_date", type: Time?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: start_date.nil? && !start_date_present?, converter: Time::ISO8601DateConverter)]
    getter start_date : Time? = nil

    @[JSON::Field(ignore: true)]
    property? start_date_present : Bool = false

    @[JSON::Field(key: "subresource_uris", type: Hash(String, String)?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: subresource_uris.nil? && !subresource_uris_present?)]
    getter subresource_uris : Hash(String, String)? = nil

    @[JSON::Field(ignore: true)]
    property? subresource_uris_present : Bool = false

    # The URI of the resource, relative to `https://api.twilio.com`
    @[JSON::Field(key: "uri", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: uri.nil? && !uri_present?)]
    getter uri : String? = nil

    @[JSON::Field(ignore: true)]
    property? uri_present : Bool = false

    # The amount of usage
    @[JSON::Field(key: "usage", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: usage.nil? && !usage_present?)]
    getter usage : String? = nil

    @[JSON::Field(ignore: true)]
    property? usage_present : Bool = false

    # The units in which usage is measured
    @[JSON::Field(key: "usage_unit", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: usage_unit.nil? && !usage_unit_present?)]
    getter usage_unit : String? = nil

    @[JSON::Field(ignore: true)]
    property? usage_unit_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @account_sid : String? = nil,
      @api_version : String? = nil,
      @as_of : String? = nil,
      @category : Twilio::UsageRecordEnumCategory? = nil,
      @count : String? = nil,
      @count_unit : String? = nil,
      @description : String? = nil,
      @end_date : Time? = nil,
      @price : String? = nil,
      @price_unit : String? = nil,
      @start_date : Time? = nil,
      @subresource_uris : Hash(String, String)? = nil,
      @uri : String? = nil,
      @usage : String? = nil,
      @usage_unit : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_account_sid = @account_sid).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("account_sid", _account_sid.to_s.size, MAX_LENGTH_FOR_ACCOUNT_SID)
          invalid_properties.push(max_length_error)
        end

        if min_length_error = OpenApi::PrimitiveValidator.min_length_error("account_sid", _account_sid.to_s.size, MIN_LENGTH_FOR_ACCOUNT_SID)
          invalid_properties.push(min_length_error)
        end

        if pattern_error = OpenApi::PrimitiveValidator.pattern_error("account_sid", _account_sid, PATTERN_FOR_ACCOUNT_SID)
          invalid_properties.push(pattern_error)
        end
      end

      unless (_category = @category).nil?
        invalid_properties.push(_category.error_message) if !_category.valid?
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_account_sid = @account_sid).nil?
        return false if _account_sid.to_s.size > MAX_LENGTH_FOR_ACCOUNT_SID
        return false if _account_sid.to_s.size < MIN_LENGTH_FOR_ACCOUNT_SID
        return false if !PATTERN_FOR_ACCOUNT_SID.matches?(_account_sid)
      end

      unless (_category = @category).nil?
        return false if !_category.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] account_sid Object to be assigned
    def account_sid=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("account_sid", new_value.to_s.size, MAX_LENGTH_FOR_ACCOUNT_SID)
        OpenApi::PrimitiveValidator.validate_min_length("account_sid", new_value.to_s.size, MIN_LENGTH_FOR_ACCOUNT_SID)
        OpenApi::PrimitiveValidator.validate_pattern("account_sid", new_value, PATTERN_FOR_ACCOUNT_SID)
      end

      @account_sid = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] api_version Object to be assigned
    def api_version=(new_value : String?)
      @api_version = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] as_of Object to be assigned
    def as_of=(new_value : String?)
      @as_of = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] category Object to be assigned
    def category=(new_value : Twilio::UsageRecordEnumCategory?)
      unless new_value.nil?
        new_value.validate
      end

      @category = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] count Object to be assigned
    def count=(new_value : String?)
      @count = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] count_unit Object to be assigned
    def count_unit=(new_value : String?)
      @count_unit = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] description Object to be assigned
    def description=(new_value : String?)
      @description = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] end_date Object to be assigned
    def end_date=(new_value : Time?)
      @end_date = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] price Object to be assigned
    def price=(new_value : String?)
      @price = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] price_unit Object to be assigned
    def price_unit=(new_value : String?)
      @price_unit = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] start_date Object to be assigned
    def start_date=(new_value : Time?)
      @start_date = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] subresource_uris Object to be assigned
    def subresource_uris=(new_value : Hash(String, String)?)
      @subresource_uris = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] uri Object to be assigned
    def uri=(new_value : String?)
      @uri = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] usage Object to be assigned
    def usage=(new_value : String?)
      @usage = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] usage_unit Object to be assigned
    def usage_unit=(new_value : String?)
      @usage_unit = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@account_sid, @account_sid_present, @api_version, @api_version_present, @as_of, @as_of_present, @category, @count, @count_present, @count_unit, @count_unit_present, @description, @description_present, @end_date, @end_date_present, @price, @price_present, @price_unit, @price_unit_present, @start_date, @start_date_present, @subresource_uris, @subresource_uris_present, @uri, @uri_present, @usage, @usage_present, @usage_unit, @usage_unit_present)
  end
end
