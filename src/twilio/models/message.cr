#  Twilio - Api
#
# This is the public Twilio REST API.
#
# The version of the OpenAPI document: 1.38.0
# Contact: support@twilio.com
# Generated by: https://openapi-generator.tech
#

require "json"
require "time"
require "log"

module Twilio
  class Message
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

    # The API version used to process the message
    @[JSON::Field(key: "api_version", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: api_version.nil? && !api_version_present?)]
    getter api_version : String? = nil

    @[JSON::Field(ignore: true)]
    property? api_version_present : Bool = false

    # The message text
    @[JSON::Field(key: "body", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: body.nil? && !body_present?)]
    getter body : String? = nil

    @[JSON::Field(ignore: true)]
    property? body_present : Bool = false

    # The RFC 2822 date and time in GMT that the resource was created
    @[JSON::Field(key: "date_created", type: Time?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: date_created.nil? && !date_created_present?, converter: Time::RFC2822Converter)]
    getter date_created : Time? = nil

    @[JSON::Field(ignore: true)]
    property? date_created_present : Bool = false

    # The RFC 2822 date and time in GMT when the message was sent
    @[JSON::Field(key: "date_sent", type: Time?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: date_sent.nil? && !date_sent_present?, converter: Time::RFC2822Converter)]
    getter date_sent : Time? = nil

    @[JSON::Field(ignore: true)]
    property? date_sent_present : Bool = false

    # The RFC 2822 date and time in GMT that the resource was last updated
    @[JSON::Field(key: "date_updated", type: Time?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: date_updated.nil? && !date_updated_present?, converter: Time::RFC2822Converter)]
    getter date_updated : Time? = nil

    @[JSON::Field(ignore: true)]
    property? date_updated_present : Bool = false

    @[JSON::Field(key: "direction", type: Twilio::MessageEnumDirection?, default: nil, required: false, nullable: false, emit_null: false)]
    getter direction : Twilio::MessageEnumDirection? = nil

    # The error code associated with the message
    @[JSON::Field(key: "error_code", type: Int32?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: error_code.nil? && !error_code_present?)]
    getter error_code : Int32? = nil

    @[JSON::Field(ignore: true)]
    property? error_code_present : Bool = false

    # The description of the error_code
    @[JSON::Field(key: "error_message", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: error_message.nil? && !error_message_present?)]
    getter error_message : String? = nil

    @[JSON::Field(ignore: true)]
    property? error_message_present : Bool = false

    # The phone number that initiated the message
    @[JSON::Field(key: "from", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: from.nil? && !from_present?)]
    getter from : String? = nil

    @[JSON::Field(ignore: true)]
    property? from_present : Bool = false

    # The SID of the Messaging Service used with the message.
    @[JSON::Field(key: "messaging_service_sid", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: messaging_service_sid.nil? && !messaging_service_sid_present?)]
    getter messaging_service_sid : String? = nil
    MAX_LENGTH_FOR_MESSAGING_SERVICE_SID = 34
    MIN_LENGTH_FOR_MESSAGING_SERVICE_SID = 34
    PATTERN_FOR_MESSAGING_SERVICE_SID    = /^MG[0-9a-fA-F]{32}$/

    @[JSON::Field(ignore: true)]
    property? messaging_service_sid_present : Bool = false

    # The number of media files associated with the message
    @[JSON::Field(key: "num_media", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: num_media.nil? && !num_media_present?)]
    getter num_media : String? = nil

    @[JSON::Field(ignore: true)]
    property? num_media_present : Bool = false

    # The number of messages used to deliver the message body
    @[JSON::Field(key: "num_segments", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: num_segments.nil? && !num_segments_present?)]
    getter num_segments : String? = nil

    @[JSON::Field(ignore: true)]
    property? num_segments_present : Bool = false

    # The amount billed for the message
    @[JSON::Field(key: "price", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: price.nil? && !price_present?)]
    getter price : String? = nil

    @[JSON::Field(ignore: true)]
    property? price_present : Bool = false

    # The currency in which price is measured
    @[JSON::Field(key: "price_unit", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: price_unit.nil? && !price_unit_present?)]
    getter price_unit : String? = nil

    @[JSON::Field(ignore: true)]
    property? price_unit_present : Bool = false

    # The unique string that identifies the resource
    @[JSON::Field(key: "sid", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: sid.nil? && !sid_present?)]
    getter sid : String? = nil
    MAX_LENGTH_FOR_SID = 34
    MIN_LENGTH_FOR_SID = 34
    PATTERN_FOR_SID    = /^(SM|MM)[0-9a-fA-F]{32}$/

    @[JSON::Field(ignore: true)]
    property? sid_present : Bool = false

    @[JSON::Field(key: "status", type: Twilio::MessageEnumStatus?, default: nil, required: false, nullable: false, emit_null: false)]
    getter status : Twilio::MessageEnumStatus? = nil

    @[JSON::Field(key: "subresource_uris", type: Hash(String, String)?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: subresource_uris.nil? && !subresource_uris_present?)]
    getter subresource_uris : Hash(String, String)? = nil

    @[JSON::Field(ignore: true)]
    property? subresource_uris_present : Bool = false

    # The phone number that received the message
    @[JSON::Field(key: "to", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: to.nil? && !to_present?)]
    getter to : String? = nil

    @[JSON::Field(ignore: true)]
    property? to_present : Bool = false

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
      @api_version : String? = nil,
      @body : String? = nil,
      @date_created : Time? = nil,
      @date_sent : Time? = nil,
      @date_updated : Time? = nil,
      @direction : Twilio::MessageEnumDirection? = nil,
      @error_code : Int32? = nil,
      @error_message : String? = nil,
      @from : String? = nil,
      @messaging_service_sid : String? = nil,
      @num_media : String? = nil,
      @num_segments : String? = nil,
      @price : String? = nil,
      @price_unit : String? = nil,
      @sid : String? = nil,
      @status : Twilio::MessageEnumStatus? = nil,
      @subresource_uris : Hash(String, String)? = nil,
      @to : String? = nil,
      @uri : String? = nil
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
      unless (_api_version = @api_version).nil?
      end
      unless (_body = @body).nil?
      end
      unless (_date_created = @date_created).nil?
      end
      unless (_date_sent = @date_sent).nil?
      end
      unless (_date_updated = @date_updated).nil?
      end
      unless (_direction = @direction).nil?
        invalid_properties.push(_direction.error_message) if !_direction.valid?
      end
      unless (_error_code = @error_code).nil?
      end
      unless (_error_message = @error_message).nil?
      end
      unless (_from = @from).nil?
      end
      unless (_messaging_service_sid = @messaging_service_sid).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("messaging_service_sid", _messaging_service_sid.to_s.size, MAX_LENGTH_FOR_MESSAGING_SERVICE_SID)
          invalid_properties.push(max_length_error)
        end

        if min_length_error = OpenApi::PrimitiveValidator.min_length_error("messaging_service_sid", _messaging_service_sid.to_s.size, MIN_LENGTH_FOR_MESSAGING_SERVICE_SID)
          invalid_properties.push(min_length_error)
        end

        if pattern_error = OpenApi::PrimitiveValidator.pattern_error("messaging_service_sid", _messaging_service_sid, PATTERN_FOR_MESSAGING_SERVICE_SID)
          invalid_properties.push(pattern_error)
        end
      end
      unless (_num_media = @num_media).nil?
      end
      unless (_num_segments = @num_segments).nil?
      end
      unless (_price = @price).nil?
      end
      unless (_price_unit = @price_unit).nil?
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
      unless (_status = @status).nil?
        invalid_properties.push(_status.error_message) if !_status.valid?
      end
      unless (_subresource_uris = @subresource_uris).nil?
      end
      unless (_to = @to).nil?
      end
      unless (_uri = @uri).nil?
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

      unless (_api_version = @api_version).nil?
      end

      unless (_body = @body).nil?
      end

      unless (_date_created = @date_created).nil?
      end

      unless (_date_sent = @date_sent).nil?
      end

      unless (_date_updated = @date_updated).nil?
      end

      unless (_direction = @direction).nil?
        return false if !_direction.valid?
      end

      unless (_error_code = @error_code).nil?
      end

      unless (_error_message = @error_message).nil?
      end

      unless (_from = @from).nil?
      end

      unless (_messaging_service_sid = @messaging_service_sid).nil?
        return false if _messaging_service_sid.to_s.size > MAX_LENGTH_FOR_MESSAGING_SERVICE_SID
        return false if _messaging_service_sid.to_s.size < MIN_LENGTH_FOR_MESSAGING_SERVICE_SID
        return false if !PATTERN_FOR_MESSAGING_SERVICE_SID.matches?(_messaging_service_sid)
      end

      unless (_num_media = @num_media).nil?
      end

      unless (_num_segments = @num_segments).nil?
      end

      unless (_price = @price).nil?
      end

      unless (_price_unit = @price_unit).nil?
      end

      unless (_sid = @sid).nil?
        return false if _sid.to_s.size > MAX_LENGTH_FOR_SID
        return false if _sid.to_s.size < MIN_LENGTH_FOR_SID
        return false if !PATTERN_FOR_SID.matches?(_sid)
      end

      unless (_status = @status).nil?
        return false if !_status.valid?
      end

      unless (_subresource_uris = @subresource_uris).nil?
      end

      unless (_to = @to).nil?
      end

      unless (_uri = @uri).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] account_sid Object to be assigned
    def account_sid=(account_sid : String?)
      if account_sid.nil?
        return @account_sid = nil
      end
      _account_sid = account_sid.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("account_sid", _account_sid.to_s.size, MAX_LENGTH_FOR_ACCOUNT_SID)
      OpenApi::PrimitiveValidator.validate_min_length("account_sid", _account_sid.to_s.size, MIN_LENGTH_FOR_ACCOUNT_SID)
      OpenApi::PrimitiveValidator.validate_pattern("account_sid", _account_sid, PATTERN_FOR_ACCOUNT_SID)
      @account_sid = _account_sid
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] api_version Object to be assigned
    def api_version=(api_version : String?)
      if api_version.nil?
        return @api_version = nil
      end
      _api_version = api_version.not_nil!
      @api_version = _api_version
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] body Object to be assigned
    def body=(body : String?)
      if body.nil?
        return @body = nil
      end
      _body = body.not_nil!
      @body = _body
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] date_created Object to be assigned
    def date_created=(date_created : Time?)
      if date_created.nil?
        return @date_created = nil
      end
      _date_created = date_created.not_nil!
      @date_created = _date_created
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] date_sent Object to be assigned
    def date_sent=(date_sent : Time?)
      if date_sent.nil?
        return @date_sent = nil
      end
      _date_sent = date_sent.not_nil!
      @date_sent = _date_sent
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] date_updated Object to be assigned
    def date_updated=(date_updated : Time?)
      if date_updated.nil?
        return @date_updated = nil
      end
      _date_updated = date_updated.not_nil!
      @date_updated = _date_updated
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] direction Object to be assigned
    def direction=(direction : Twilio::MessageEnumDirection?)
      if direction.nil?
        return @direction = nil
      end
      _direction = direction.not_nil!
      _direction.validate
      @direction = _direction
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] error_code Object to be assigned
    def error_code=(error_code : Int32?)
      if error_code.nil?
        return @error_code = nil
      end
      _error_code = error_code.not_nil!
      @error_code = _error_code
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] error_message Object to be assigned
    def error_message=(error_message : String?)
      if error_message.nil?
        return @error_message = nil
      end
      _error_message = error_message.not_nil!
      @error_message = _error_message
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] from Object to be assigned
    def from=(from : String?)
      if from.nil?
        return @from = nil
      end
      _from = from.not_nil!
      @from = _from
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] messaging_service_sid Object to be assigned
    def messaging_service_sid=(messaging_service_sid : String?)
      if messaging_service_sid.nil?
        return @messaging_service_sid = nil
      end
      _messaging_service_sid = messaging_service_sid.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("messaging_service_sid", _messaging_service_sid.to_s.size, MAX_LENGTH_FOR_MESSAGING_SERVICE_SID)
      OpenApi::PrimitiveValidator.validate_min_length("messaging_service_sid", _messaging_service_sid.to_s.size, MIN_LENGTH_FOR_MESSAGING_SERVICE_SID)
      OpenApi::PrimitiveValidator.validate_pattern("messaging_service_sid", _messaging_service_sid, PATTERN_FOR_MESSAGING_SERVICE_SID)
      @messaging_service_sid = _messaging_service_sid
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] num_media Object to be assigned
    def num_media=(num_media : String?)
      if num_media.nil?
        return @num_media = nil
      end
      _num_media = num_media.not_nil!
      @num_media = _num_media
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] num_segments Object to be assigned
    def num_segments=(num_segments : String?)
      if num_segments.nil?
        return @num_segments = nil
      end
      _num_segments = num_segments.not_nil!
      @num_segments = _num_segments
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] price Object to be assigned
    def price=(price : String?)
      if price.nil?
        return @price = nil
      end
      _price = price.not_nil!
      @price = _price
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] price_unit Object to be assigned
    def price_unit=(price_unit : String?)
      if price_unit.nil?
        return @price_unit = nil
      end
      _price_unit = price_unit.not_nil!
      @price_unit = _price_unit
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] sid Object to be assigned
    def sid=(sid : String?)
      if sid.nil?
        return @sid = nil
      end
      _sid = sid.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("sid", _sid.to_s.size, MAX_LENGTH_FOR_SID)
      OpenApi::PrimitiveValidator.validate_min_length("sid", _sid.to_s.size, MIN_LENGTH_FOR_SID)
      OpenApi::PrimitiveValidator.validate_pattern("sid", _sid, PATTERN_FOR_SID)
      @sid = _sid
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status : Twilio::MessageEnumStatus?)
      if status.nil?
        return @status = nil
      end
      _status = status.not_nil!
      _status.validate
      @status = _status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] subresource_uris Object to be assigned
    def subresource_uris=(subresource_uris : Hash(String, String)?)
      if subresource_uris.nil?
        return @subresource_uris = nil
      end
      _subresource_uris = subresource_uris.not_nil!
      @subresource_uris = _subresource_uris
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] to Object to be assigned
    def to=(to : String?)
      if to.nil?
        return @to = nil
      end
      _to = to.not_nil!
      @to = _to
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] uri Object to be assigned
    def uri=(uri : String?)
      if uri.nil?
        return @uri = nil
      end
      _uri = uri.not_nil!
      @uri = _uri
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@account_sid, @account_sid_present, @api_version, @api_version_present, @body, @body_present, @date_created, @date_created_present, @date_sent, @date_sent_present, @date_updated, @date_updated_present, @direction, @error_code, @error_code_present, @error_message, @error_message_present, @from, @from_present, @messaging_service_sid, @messaging_service_sid_present, @num_media, @num_media_present, @num_segments, @num_segments_present, @price, @price_present, @price_unit, @price_unit_present, @sid, @sid_present, @status, @subresource_uris, @subresource_uris_present, @to, @to_present, @uri, @uri_present)
  end
end
