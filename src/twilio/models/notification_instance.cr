#  Twilio - Api
#
# This is the public Twilio REST API.
#
# The version of the OpenAPI document: 1.29.1
# Contact: support@twilio.com
# Generated by: https://openapi-generator.tech
#

require "nason"
require "time"
require "log"

module Twilio
  class NotificationInstance
    include NASON::Serializable

    # Optional properties
    # The SID of the Account that created the resource
    @[NASON::Field(key: "account_sid", type: String? | Null, nillable: true)]
    property account_sid : String? | Null

    # The API version used to generate the notification
    @[NASON::Field(key: "api_version", type: String? | Null, nillable: true)]
    property api_version : String? | Null

    # The SID of the Call the resource is associated with
    @[NASON::Field(key: "call_sid", type: String? | Null, nillable: true)]
    property call_sid : String? | Null

    # The RFC 2822 date and time in GMT that the resource was created
    @[NASON::Field(key: "date_created", type: Time? | Null, converter: Time::RFC2822Converter, nillable: true)]
    property date_created : Time? | Null

    # The RFC 2822 date and time in GMT that the resource was last updated
    @[NASON::Field(key: "date_updated", type: Time? | Null, converter: Time::RFC2822Converter, nillable: true)]
    property date_updated : Time? | Null

    # A unique error code corresponding to the notification
    @[NASON::Field(key: "error_code", type: String? | Null, nillable: true)]
    property error_code : String? | Null

    # An integer log level
    @[NASON::Field(key: "log", type: String? | Null, nillable: true)]
    property log : String? | Null

    # The date the notification was generated
    @[NASON::Field(key: "message_date", type: Time? | Null, converter: Time::RFC2822Converter, nillable: true)]
    property message_date : Time? | Null

    # The text of the notification
    @[NASON::Field(key: "message_text", type: String? | Null, nillable: true)]
    property message_text : String? | Null

    # A URL for more information about the error code
    @[NASON::Field(key: "more_info", type: String? | Null, nillable: true)]
    property more_info : String? | Null

    # HTTP method used with the request url
    @[NASON::Field(key: "request_method", type: String? | Null, nillable: true)]
    property request_method : String? | Null

    # URL of the resource that generated the notification
    @[NASON::Field(key: "request_url", type: String? | Null, nillable: true)]
    property request_url : String? | Null

    # Twilio-generated HTTP variables sent to the server
    @[NASON::Field(key: "request_variables", type: String? | Null, nillable: true)]
    property request_variables : String? | Null

    # The HTTP body returned by your server
    @[NASON::Field(key: "response_body", type: String? | Null, nillable: true)]
    property response_body : String? | Null

    # The HTTP headers returned by your server
    @[NASON::Field(key: "response_headers", type: String? | Null, nillable: true)]
    property response_headers : String? | Null

    # The unique string that identifies the resource
    @[NASON::Field(key: "sid", type: String? | Null, nillable: true)]
    property sid : String? | Null

    # The URI of the resource, relative to `https://api.twilio.com`
    @[NASON::Field(key: "uri", type: String? | Null, nillable: true)]
    property uri : String? | Null

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
    def initialize(*, @account_sid : String? | Null = nil, @api_version : String? | Null = nil, @call_sid : String? | Null = nil, @date_created : Time? | Null = nil, @date_updated : Time? | Null = nil, @error_code : String? | Null = nil, @log : String? | Null = nil, @message_date : Time? | Null = nil, @message_text : String? | Null = nil, @more_info : String? | Null = nil, @request_method : String? | Null = nil, @request_url : String? | Null = nil, @request_variables : String? | Null = nil, @response_body : String? | Null = nil, @response_headers : String? | Null = nil, @sid : String? | Null = nil, @uri : String? | Null = nil)
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

      if !@call_sid.nil? && !@call_sid.null? && @call_sid.to_s.size > 34
        invalid_properties.push("invalid value for \"call_sid\", the character length must be smaller than or equal to 34.")
      end

      if !@call_sid.nil? && !@call_sid.null? && @call_sid.to_s.size < 34
        invalid_properties.push("invalid value for \"call_sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^CA[0-9a-fA-F]{32}$/
      if !@call_sid.nil? && !@call_sid.null? && @call_sid !~ pattern
        invalid_properties.push("invalid value for \"call_sid\", must conform to the pattern #{pattern}.")
      end

      if !@sid.nil? && !@sid.null? && @sid.to_s.size > 34
        invalid_properties.push("invalid value for \"sid\", the character length must be smaller than or equal to 34.")
      end

      if !@sid.nil? && !@sid.null? && @sid.to_s.size < 34
        invalid_properties.push("invalid value for \"sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^NO[0-9a-fA-F]{32}$/
      if !@sid.nil? && !@sid.null? && @sid !~ pattern
        invalid_properties.push("invalid value for \"sid\", must conform to the pattern #{pattern}.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@account_sid.nil? && !@account_sid.null? && @account_sid.to_s.size > 34
      return false if !@account_sid.nil? && !@account_sid.null? && @account_sid.to_s.size < 34
      return false if !@account_sid.nil? && !@account_sid.null? && @account_sid !~ /^AC[0-9a-fA-F]{32}$/
      return false if !@call_sid.nil? && !@call_sid.null? && @call_sid.to_s.size > 34
      return false if !@call_sid.nil? && !@call_sid.null? && @call_sid.to_s.size < 34
      return false if !@call_sid.nil? && !@call_sid.null? && @call_sid !~ /^CA[0-9a-fA-F]{32}$/
      request_method_validator = EnumAttributeValidator.new("String", ["HEAD", "GET", "POST", "PATCH", "PUT", "DELETE"])
      return false unless request_method_validator.valid?(@request_method)
      return false if !@sid.nil? && !@sid.null? && @sid.to_s.size > 34
      return false if !@sid.nil? && !@sid.null? && @sid.to_s.size < 34
      return false if !@sid.nil? && !@sid.null? && @sid !~ /^NO[0-9a-fA-F]{32}$/
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

    # Custom attribute writer method with validation
    # @param [Object] call_sid Value to be assigned
    def call_sid=(call_sid)
      if !call_sid.nil? && !@call_sid.null? && call_sid.to_s.size > 34
        raise ArgumentError.new("invalid value for \"call_sid\", the character length must be smaller than or equal to 34.")
      end

      if !call_sid.nil? && !@call_sid.null? && call_sid.to_s.size < 34
        raise ArgumentError.new("invalid value for \"call_sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^CA[0-9a-fA-F]{32}$/
      if !call_sid.nil? && !@call_sid.null? && call_sid !~ pattern
        raise ArgumentError.new("invalid value for \"call_sid\", must conform to the pattern #{pattern}.")
      end

      @call_sid = call_sid
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] request_method Object to be assigned
    def request_method=(request_method)
      validator = EnumAttributeValidator.new("String", ["HEAD", "GET", "POST", "PATCH", "PUT", "DELETE"])
      unless validator.valid?(request_method)
        raise ArgumentError.new("invalid value for \"request_method\", must be one of #{validator.allowable_values}.")
      end
      @request_method = request_method
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

      pattern = /^NO[0-9a-fA-F]{32}$/
      if !sid.nil? && !@sid.null? && sid !~ pattern
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
        api_version == o.api_version &&
        call_sid == o.call_sid &&
        date_created == o.date_created &&
        date_updated == o.date_updated &&
        error_code == o.error_code &&
        log == o.log &&
        message_date == o.message_date &&
        message_text == o.message_text &&
        more_info == o.more_info &&
        request_method == o.request_method &&
        request_url == o.request_url &&
        request_variables == o.request_variables &&
        response_body == o.response_body &&
        response_headers == o.response_headers &&
        sid == o.sid &&
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
      [account_sid, api_version, call_sid, date_created, date_updated, error_code, log, message_date, message_text, more_info, request_method, request_url, request_variables, response_body, response_headers, sid, uri].hash
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
