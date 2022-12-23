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
  class AuthorizedConnectApp
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

    # The company name set for the Connect App
    @[JSON::Field(key: "connect_app_company_name", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: connect_app_company_name.nil? && !connect_app_company_name_present?)]
    getter connect_app_company_name : String? = nil

    @[JSON::Field(ignore: true)]
    property? connect_app_company_name_present : Bool = false

    # A detailed description of the app
    @[JSON::Field(key: "connect_app_description", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: connect_app_description.nil? && !connect_app_description_present?)]
    getter connect_app_description : String? = nil

    @[JSON::Field(ignore: true)]
    property? connect_app_description_present : Bool = false

    # The name of the Connect App
    @[JSON::Field(key: "connect_app_friendly_name", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: connect_app_friendly_name.nil? && !connect_app_friendly_name_present?)]
    getter connect_app_friendly_name : String? = nil

    @[JSON::Field(ignore: true)]
    property? connect_app_friendly_name_present : Bool = false

    # The public URL for the Connect App
    @[JSON::Field(key: "connect_app_homepage_url", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: connect_app_homepage_url.nil? && !connect_app_homepage_url_present?)]
    getter connect_app_homepage_url : String? = nil

    @[JSON::Field(ignore: true)]
    property? connect_app_homepage_url_present : Bool = false

    # The SID that we assigned to the Connect App
    @[JSON::Field(key: "connect_app_sid", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: connect_app_sid.nil? && !connect_app_sid_present?)]
    getter connect_app_sid : String? = nil
    MAX_LENGTH_FOR_CONNECT_APP_SID = 34
    MIN_LENGTH_FOR_CONNECT_APP_SID = 34
    PATTERN_FOR_CONNECT_APP_SID    = /^CN[0-9a-fA-F]{32}$/

    @[JSON::Field(ignore: true)]
    property? connect_app_sid_present : Bool = false

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

    # Permissions authorized to the app
    @[JSON::Field(key: "permissions", type: Array(ConnectAppEnumPermission)?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: permissions.nil? && !permissions_present?)]
    getter permissions : Array(ConnectAppEnumPermission)? = nil

    @[JSON::Field(ignore: true)]
    property? permissions_present : Bool = false

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
      @connect_app_company_name : String? = nil,
      @connect_app_description : String? = nil,
      @connect_app_friendly_name : String? = nil,
      @connect_app_homepage_url : String? = nil,
      @connect_app_sid : String? = nil,
      @date_created : Time? = nil,
      @date_updated : Time? = nil,
      @permissions : Array(ConnectAppEnumPermission)? = nil,
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
      unless (_connect_app_company_name = @connect_app_company_name).nil?
      end
      unless (_connect_app_description = @connect_app_description).nil?
      end
      unless (_connect_app_friendly_name = @connect_app_friendly_name).nil?
      end
      unless (_connect_app_homepage_url = @connect_app_homepage_url).nil?
      end
      unless (_connect_app_sid = @connect_app_sid).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("connect_app_sid", _connect_app_sid.to_s.size, MAX_LENGTH_FOR_CONNECT_APP_SID)
          invalid_properties.push(max_length_error)
        end

        if min_length_error = OpenApi::PrimitiveValidator.min_length_error("connect_app_sid", _connect_app_sid.to_s.size, MIN_LENGTH_FOR_CONNECT_APP_SID)
          invalid_properties.push(min_length_error)
        end

        if pattern_error = OpenApi::PrimitiveValidator.pattern_error("connect_app_sid", _connect_app_sid, PATTERN_FOR_CONNECT_APP_SID)
          invalid_properties.push(pattern_error)
        end
      end
      unless (_date_created = @date_created).nil?
      end
      unless (_date_updated = @date_updated).nil?
      end
      unless (_permissions = @permissions).nil?
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

      unless (_connect_app_company_name = @connect_app_company_name).nil?
      end

      unless (_connect_app_description = @connect_app_description).nil?
      end

      unless (_connect_app_friendly_name = @connect_app_friendly_name).nil?
      end

      unless (_connect_app_homepage_url = @connect_app_homepage_url).nil?
      end

      unless (_connect_app_sid = @connect_app_sid).nil?
        return false if _connect_app_sid.to_s.size > MAX_LENGTH_FOR_CONNECT_APP_SID
        return false if _connect_app_sid.to_s.size < MIN_LENGTH_FOR_CONNECT_APP_SID
        return false if !PATTERN_FOR_CONNECT_APP_SID.matches?(_connect_app_sid)
      end

      unless (_date_created = @date_created).nil?
      end

      unless (_date_updated = @date_updated).nil?
      end

      unless (_permissions = @permissions).nil?
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
    # @param [Object] connect_app_company_name Object to be assigned
    def connect_app_company_name=(connect_app_company_name : String?)
      if connect_app_company_name.nil?
        return @connect_app_company_name = nil
      end
      _connect_app_company_name = connect_app_company_name.not_nil!
      @connect_app_company_name = _connect_app_company_name
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] connect_app_description Object to be assigned
    def connect_app_description=(connect_app_description : String?)
      if connect_app_description.nil?
        return @connect_app_description = nil
      end
      _connect_app_description = connect_app_description.not_nil!
      @connect_app_description = _connect_app_description
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] connect_app_friendly_name Object to be assigned
    def connect_app_friendly_name=(connect_app_friendly_name : String?)
      if connect_app_friendly_name.nil?
        return @connect_app_friendly_name = nil
      end
      _connect_app_friendly_name = connect_app_friendly_name.not_nil!
      @connect_app_friendly_name = _connect_app_friendly_name
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] connect_app_homepage_url Object to be assigned
    def connect_app_homepage_url=(connect_app_homepage_url : String?)
      if connect_app_homepage_url.nil?
        return @connect_app_homepage_url = nil
      end
      _connect_app_homepage_url = connect_app_homepage_url.not_nil!
      @connect_app_homepage_url = _connect_app_homepage_url
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] connect_app_sid Object to be assigned
    def connect_app_sid=(connect_app_sid : String?)
      if connect_app_sid.nil?
        return @connect_app_sid = nil
      end
      _connect_app_sid = connect_app_sid.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("connect_app_sid", _connect_app_sid.to_s.size, MAX_LENGTH_FOR_CONNECT_APP_SID)
      OpenApi::PrimitiveValidator.validate_min_length("connect_app_sid", _connect_app_sid.to_s.size, MIN_LENGTH_FOR_CONNECT_APP_SID)
      OpenApi::PrimitiveValidator.validate_pattern("connect_app_sid", _connect_app_sid, PATTERN_FOR_CONNECT_APP_SID)
      @connect_app_sid = _connect_app_sid
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
    # @param [Object] date_updated Object to be assigned
    def date_updated=(date_updated : Time?)
      if date_updated.nil?
        return @date_updated = nil
      end
      _date_updated = date_updated.not_nil!
      @date_updated = _date_updated
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] permissions Object to be assigned
    def permissions=(permissions : Array(ConnectAppEnumPermission)?)
      if permissions.nil?
        return @permissions = nil
      end
      _permissions = permissions.not_nil!
      @permissions = _permissions
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
    def_equals_and_hash(@account_sid, @account_sid_present, @connect_app_company_name, @connect_app_company_name_present, @connect_app_description, @connect_app_description_present, @connect_app_friendly_name, @connect_app_friendly_name_present, @connect_app_homepage_url, @connect_app_homepage_url_present, @connect_app_sid, @connect_app_sid_present, @date_created, @date_created_present, @date_updated, @date_updated_present, @permissions, @permissions_present, @uri, @uri_present)
  end
end
