#  Twilio - Api
#
# This is the public Twilio REST API.
#
# The version of the OpenAPI document: 1.38.0
# Contact: support@twilio.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

module Twilio
  class RecordingRecordingAddOnResultRecordingAddOnResultPayload
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # The SID of the Account that created the resource
    @[JSON::Field(key: "account_sid", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: account_sid.nil? && !account_sid_present?)]
    getter account_sid : String? = nil
    MAX_LENGTH_FOR_ACCOUNT_SID = 34
    MIN_LENGTH_FOR_ACCOUNT_SID = 34
    PATTERN_FOR_ACCOUNT_SID    = /^AC[0-9a-fA-F]{32}$/

    @[JSON::Field(ignore: true)]
    property? account_sid_present : Bool = false

    # The SID of the Add-on configuration
    @[JSON::Field(key: "add_on_configuration_sid", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: add_on_configuration_sid.nil? && !add_on_configuration_sid_present?)]
    getter add_on_configuration_sid : String? = nil
    MAX_LENGTH_FOR_ADD_ON_CONFIGURATION_SID = 34
    MIN_LENGTH_FOR_ADD_ON_CONFIGURATION_SID = 34
    PATTERN_FOR_ADD_ON_CONFIGURATION_SID    = /^XE[0-9a-fA-F]{32}$/

    @[JSON::Field(ignore: true)]
    property? add_on_configuration_sid_present : Bool = false

    # The SID of the AddOnResult to which the payload belongs
    @[JSON::Field(key: "add_on_result_sid", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: add_on_result_sid.nil? && !add_on_result_sid_present?)]
    getter add_on_result_sid : String? = nil
    MAX_LENGTH_FOR_ADD_ON_RESULT_SID = 34
    MIN_LENGTH_FOR_ADD_ON_RESULT_SID = 34
    PATTERN_FOR_ADD_ON_RESULT_SID    = /^XR[0-9a-fA-F]{32}$/

    @[JSON::Field(ignore: true)]
    property? add_on_result_sid_present : Bool = false

    # The SID of the Add-on to which the result belongs
    @[JSON::Field(key: "add_on_sid", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: add_on_sid.nil? && !add_on_sid_present?)]
    getter add_on_sid : String? = nil
    MAX_LENGTH_FOR_ADD_ON_SID = 34
    MIN_LENGTH_FOR_ADD_ON_SID = 34
    PATTERN_FOR_ADD_ON_SID    = /^XB[0-9a-fA-F]{32}$/

    @[JSON::Field(ignore: true)]
    property? add_on_sid_present : Bool = false

    # The MIME type of the payload
    @[JSON::Field(key: "content_type", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: content_type.nil? && !content_type_present?)]
    getter content_type : String? = nil

    @[JSON::Field(ignore: true)]
    property? content_type_present : Bool = false

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

    # The string that describes the payload
    @[JSON::Field(key: "label", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: label.nil? && !label_present?)]
    getter label : String? = nil

    @[JSON::Field(ignore: true)]
    property? label_present : Bool = false

    # The SID of the recording to which the AddOnResult resource that contains the payload belongs
    @[JSON::Field(key: "reference_sid", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: reference_sid.nil? && !reference_sid_present?)]
    getter reference_sid : String? = nil
    MAX_LENGTH_FOR_REFERENCE_SID = 34
    MIN_LENGTH_FOR_REFERENCE_SID = 34
    PATTERN_FOR_REFERENCE_SID    = /^RE[0-9a-fA-F]{32}$/

    @[JSON::Field(ignore: true)]
    property? reference_sid_present : Bool = false

    # The unique string that identifies the resource
    @[JSON::Field(key: "sid", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: sid.nil? && !sid_present?)]
    getter sid : String? = nil
    MAX_LENGTH_FOR_SID = 34
    MIN_LENGTH_FOR_SID = 34
    PATTERN_FOR_SID    = /^XH[0-9a-fA-F]{32}$/

    @[JSON::Field(ignore: true)]
    property? sid_present : Bool = false

    @[JSON::Field(key: "subresource_uris", type: Hash(String, String)?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: subresource_uris.nil? && !subresource_uris_present?)]
    getter subresource_uris : Hash(String, String)? = nil

    @[JSON::Field(ignore: true)]
    property? subresource_uris_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @account_sid : String? = nil,
      @add_on_configuration_sid : String? = nil,
      @add_on_result_sid : String? = nil,
      @add_on_sid : String? = nil,
      @content_type : String? = nil,
      @date_created : Time? = nil,
      @date_updated : Time? = nil,
      @label : String? = nil,
      @reference_sid : String? = nil,
      @sid : String? = nil,
      @subresource_uris : Hash(String, String)? = nil
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
      unless (_add_on_configuration_sid = @add_on_configuration_sid).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("add_on_configuration_sid", _add_on_configuration_sid.to_s.size, MAX_LENGTH_FOR_ADD_ON_CONFIGURATION_SID)
          invalid_properties.push(max_length_error)
        end

        if min_length_error = OpenApi::PrimitiveValidator.min_length_error("add_on_configuration_sid", _add_on_configuration_sid.to_s.size, MIN_LENGTH_FOR_ADD_ON_CONFIGURATION_SID)
          invalid_properties.push(min_length_error)
        end

        if pattern_error = OpenApi::PrimitiveValidator.pattern_error("add_on_configuration_sid", _add_on_configuration_sid, PATTERN_FOR_ADD_ON_CONFIGURATION_SID)
          invalid_properties.push(pattern_error)
        end
      end
      unless (_add_on_result_sid = @add_on_result_sid).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("add_on_result_sid", _add_on_result_sid.to_s.size, MAX_LENGTH_FOR_ADD_ON_RESULT_SID)
          invalid_properties.push(max_length_error)
        end

        if min_length_error = OpenApi::PrimitiveValidator.min_length_error("add_on_result_sid", _add_on_result_sid.to_s.size, MIN_LENGTH_FOR_ADD_ON_RESULT_SID)
          invalid_properties.push(min_length_error)
        end

        if pattern_error = OpenApi::PrimitiveValidator.pattern_error("add_on_result_sid", _add_on_result_sid, PATTERN_FOR_ADD_ON_RESULT_SID)
          invalid_properties.push(pattern_error)
        end
      end
      unless (_add_on_sid = @add_on_sid).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("add_on_sid", _add_on_sid.to_s.size, MAX_LENGTH_FOR_ADD_ON_SID)
          invalid_properties.push(max_length_error)
        end

        if min_length_error = OpenApi::PrimitiveValidator.min_length_error("add_on_sid", _add_on_sid.to_s.size, MIN_LENGTH_FOR_ADD_ON_SID)
          invalid_properties.push(min_length_error)
        end

        if pattern_error = OpenApi::PrimitiveValidator.pattern_error("add_on_sid", _add_on_sid, PATTERN_FOR_ADD_ON_SID)
          invalid_properties.push(pattern_error)
        end
      end

      unless (_reference_sid = @reference_sid).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("reference_sid", _reference_sid.to_s.size, MAX_LENGTH_FOR_REFERENCE_SID)
          invalid_properties.push(max_length_error)
        end

        if min_length_error = OpenApi::PrimitiveValidator.min_length_error("reference_sid", _reference_sid.to_s.size, MIN_LENGTH_FOR_REFERENCE_SID)
          invalid_properties.push(min_length_error)
        end

        if pattern_error = OpenApi::PrimitiveValidator.pattern_error("reference_sid", _reference_sid, PATTERN_FOR_REFERENCE_SID)
          invalid_properties.push(pattern_error)
        end
      end
      unless (_sid = @sid).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("sid", _sid.to_s.size, MAX_LENGTH_FOR_SID)
          invalid_properties.push(max_length_error)
        end

        if min_length_error = OpenApi::PrimitiveValidator.min_length_error("sid", _sid.to_s.size, MIN_LENGTH_FOR_SID)
          invalid_properties.push(min_length_error)
        end

        if pattern_error = OpenApi::PrimitiveValidator.pattern_error("sid", _sid, PATTERN_FOR_SID)
          invalid_properties.push(pattern_error)
        end
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

      unless (_add_on_configuration_sid = @add_on_configuration_sid).nil?
        return false if _add_on_configuration_sid.to_s.size > MAX_LENGTH_FOR_ADD_ON_CONFIGURATION_SID
        return false if _add_on_configuration_sid.to_s.size < MIN_LENGTH_FOR_ADD_ON_CONFIGURATION_SID
        return false if !PATTERN_FOR_ADD_ON_CONFIGURATION_SID.matches?(_add_on_configuration_sid)
      end

      unless (_add_on_result_sid = @add_on_result_sid).nil?
        return false if _add_on_result_sid.to_s.size > MAX_LENGTH_FOR_ADD_ON_RESULT_SID
        return false if _add_on_result_sid.to_s.size < MIN_LENGTH_FOR_ADD_ON_RESULT_SID
        return false if !PATTERN_FOR_ADD_ON_RESULT_SID.matches?(_add_on_result_sid)
      end

      unless (_add_on_sid = @add_on_sid).nil?
        return false if _add_on_sid.to_s.size > MAX_LENGTH_FOR_ADD_ON_SID
        return false if _add_on_sid.to_s.size < MIN_LENGTH_FOR_ADD_ON_SID
        return false if !PATTERN_FOR_ADD_ON_SID.matches?(_add_on_sid)
      end

      unless (_reference_sid = @reference_sid).nil?
        return false if _reference_sid.to_s.size > MAX_LENGTH_FOR_REFERENCE_SID
        return false if _reference_sid.to_s.size < MIN_LENGTH_FOR_REFERENCE_SID
        return false if !PATTERN_FOR_REFERENCE_SID.matches?(_reference_sid)
      end

      unless (_sid = @sid).nil?
        return false if _sid.to_s.size > MAX_LENGTH_FOR_SID
        return false if _sid.to_s.size < MIN_LENGTH_FOR_SID
        return false if !PATTERN_FOR_SID.matches?(_sid)
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
    # @param [Object] add_on_configuration_sid Object to be assigned
    def add_on_configuration_sid=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("add_on_configuration_sid", new_value.to_s.size, MAX_LENGTH_FOR_ADD_ON_CONFIGURATION_SID)
        OpenApi::PrimitiveValidator.validate_min_length("add_on_configuration_sid", new_value.to_s.size, MIN_LENGTH_FOR_ADD_ON_CONFIGURATION_SID)
        OpenApi::PrimitiveValidator.validate_pattern("add_on_configuration_sid", new_value, PATTERN_FOR_ADD_ON_CONFIGURATION_SID)
      end

      @add_on_configuration_sid = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] add_on_result_sid Object to be assigned
    def add_on_result_sid=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("add_on_result_sid", new_value.to_s.size, MAX_LENGTH_FOR_ADD_ON_RESULT_SID)
        OpenApi::PrimitiveValidator.validate_min_length("add_on_result_sid", new_value.to_s.size, MIN_LENGTH_FOR_ADD_ON_RESULT_SID)
        OpenApi::PrimitiveValidator.validate_pattern("add_on_result_sid", new_value, PATTERN_FOR_ADD_ON_RESULT_SID)
      end

      @add_on_result_sid = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] add_on_sid Object to be assigned
    def add_on_sid=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("add_on_sid", new_value.to_s.size, MAX_LENGTH_FOR_ADD_ON_SID)
        OpenApi::PrimitiveValidator.validate_min_length("add_on_sid", new_value.to_s.size, MIN_LENGTH_FOR_ADD_ON_SID)
        OpenApi::PrimitiveValidator.validate_pattern("add_on_sid", new_value, PATTERN_FOR_ADD_ON_SID)
      end

      @add_on_sid = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] content_type Object to be assigned
    def content_type=(new_value : String?)
      @content_type = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] date_created Object to be assigned
    def date_created=(new_value : Time?)
      @date_created = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] date_updated Object to be assigned
    def date_updated=(new_value : Time?)
      @date_updated = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] label Object to be assigned
    def label=(new_value : String?)
      @label = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] reference_sid Object to be assigned
    def reference_sid=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("reference_sid", new_value.to_s.size, MAX_LENGTH_FOR_REFERENCE_SID)
        OpenApi::PrimitiveValidator.validate_min_length("reference_sid", new_value.to_s.size, MIN_LENGTH_FOR_REFERENCE_SID)
        OpenApi::PrimitiveValidator.validate_pattern("reference_sid", new_value, PATTERN_FOR_REFERENCE_SID)
      end

      @reference_sid = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] sid Object to be assigned
    def sid=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("sid", new_value.to_s.size, MAX_LENGTH_FOR_SID)
        OpenApi::PrimitiveValidator.validate_min_length("sid", new_value.to_s.size, MIN_LENGTH_FOR_SID)
        OpenApi::PrimitiveValidator.validate_pattern("sid", new_value, PATTERN_FOR_SID)
      end

      @sid = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] subresource_uris Object to be assigned
    def subresource_uris=(new_value : Hash(String, String)?)
      @subresource_uris = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@account_sid, @account_sid_present, @add_on_configuration_sid, @add_on_configuration_sid_present, @add_on_result_sid, @add_on_result_sid_present, @add_on_sid, @add_on_sid_present, @content_type, @content_type_present, @date_created, @date_created_present, @date_updated, @date_updated_present, @label, @label_present, @reference_sid, @reference_sid_present, @sid, @sid_present, @subresource_uris, @subresource_uris_present)
  end
end
