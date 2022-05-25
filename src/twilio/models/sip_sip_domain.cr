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
  class SipSipDomain
    include NASON::Serializable

    # Optional properties
    # The SID of the Account that created the resource
    @[NASON::Field(key: "account_sid", type: String? | Null, nillable: true)]
    property account_sid : String? | Null

    # The API version used to process the call
    @[NASON::Field(key: "api_version", type: String? | Null, nillable: true)]
    property api_version : String? | Null

    # The types of authentication mapped to the domain
    @[NASON::Field(key: "auth_type", type: String? | Null, nillable: true)]
    property auth_type : String? | Null

    # The SID of the BYOC Trunk resource.
    @[NASON::Field(key: "byoc_trunk_sid", type: String? | Null, nillable: true)]
    property byoc_trunk_sid : String? | Null

    # The RFC 2822 date and time in GMT that the resource was created
    @[NASON::Field(key: "date_created", type: Time? | Null, converter: Time::RFC2822Converter, nillable: true)]
    property date_created : Time? | Null

    # The RFC 2822 date and time in GMT that the resource was last updated
    @[NASON::Field(key: "date_updated", type: Time? | Null, converter: Time::RFC2822Converter, nillable: true)]
    property date_updated : Time? | Null

    # The unique address on Twilio to route SIP traffic
    @[NASON::Field(key: "domain_name", type: String? | Null, nillable: true)]
    property domain_name : String? | Null

    # Whether an emergency caller sid is configured for the domain.
    @[NASON::Field(key: "emergency_caller_sid", type: String? | Null, nillable: true)]
    property emergency_caller_sid : String? | Null

    # Whether emergency calling is enabled for the domain.
    @[NASON::Field(key: "emergency_calling_enabled", type: Bool? | Null, nillable: true)]
    property emergency_calling_enabled : Bool? | Null

    # The string that you assigned to describe the resource
    @[NASON::Field(key: "friendly_name", type: String? | Null, nillable: true)]
    property friendly_name : String? | Null

    # Whether secure SIP is enabled for the domain
    @[NASON::Field(key: "secure", type: Bool? | Null, nillable: true)]
    property secure : Bool? | Null

    # The unique string that identifies the resource
    @[NASON::Field(key: "sid", type: String? | Null, nillable: true)]
    property sid : String? | Null

    # Whether SIP registration is allowed
    @[NASON::Field(key: "sip_registration", type: Bool? | Null, nillable: true)]
    property sip_registration : Bool? | Null

    # Account Instance Subresources
    @[NASON::Field(key: "subresource_uris", type: Hash(String, String)? | Null, nillable: true)]
    property subresource_uris : Hash(String, String)? | Null

    # The URI of the resource, relative to `https://api.twilio.com`
    @[NASON::Field(key: "uri", type: String? | Null, nillable: true)]
    property uri : String? | Null

    # The HTTP method used with voice_fallback_url
    @[NASON::Field(key: "voice_fallback_method", type: String? | Null, nillable: true)]
    property voice_fallback_method : String? | Null

    # The URL we call when an error occurs while executing TwiML
    @[NASON::Field(key: "voice_fallback_url", type: String? | Null, nillable: true)]
    property voice_fallback_url : String? | Null

    # The HTTP method to use with voice_url
    @[NASON::Field(key: "voice_method", type: String? | Null, nillable: true)]
    property voice_method : String? | Null

    # The HTTP method we use to call voice_status_callback_url
    @[NASON::Field(key: "voice_status_callback_method", type: String? | Null, nillable: true)]
    property voice_status_callback_method : String? | Null

    # The URL that we call with status updates
    @[NASON::Field(key: "voice_status_callback_url", type: String? | Null, nillable: true)]
    property voice_status_callback_url : String? | Null

    # The URL we call when receiving a call
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
    def initialize(*, @account_sid : String? | Null = nil, @api_version : String? | Null = nil, @auth_type : String? | Null = nil, @byoc_trunk_sid : String? | Null = nil, @date_created : Time? | Null = nil, @date_updated : Time? | Null = nil, @domain_name : String? | Null = nil, @emergency_caller_sid : String? | Null = nil, @emergency_calling_enabled : Bool? | Null = nil, @friendly_name : String? | Null = nil, @secure : Bool? | Null = nil, @sid : String? | Null = nil, @sip_registration : Bool? | Null = nil, @subresource_uris : Hash(String, String)? | Null = nil, @uri : String? | Null = nil, @voice_fallback_method : String? | Null = nil, @voice_fallback_url : String? | Null = nil, @voice_method : String? | Null = nil, @voice_status_callback_method : String? | Null = nil, @voice_status_callback_url : String? | Null = nil, @voice_url : String? | Null = nil)
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

      if !@byoc_trunk_sid.nil? && !@byoc_trunk_sid.null? && @byoc_trunk_sid.to_s.size > 34
        invalid_properties.push("invalid value for \"byoc_trunk_sid\", the character length must be smaller than or equal to 34.")
      end

      if !@byoc_trunk_sid.nil? && !@byoc_trunk_sid.null? && @byoc_trunk_sid.to_s.size < 34
        invalid_properties.push("invalid value for \"byoc_trunk_sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^BY[0-9a-fA-F]{32}$/
      if !@byoc_trunk_sid.nil? && !@byoc_trunk_sid.null? && @byoc_trunk_sid !~ pattern
        invalid_properties.push("invalid value for \"byoc_trunk_sid\", must conform to the pattern #{pattern}.")
      end

      if !@emergency_caller_sid.nil? && !@emergency_caller_sid.null? && @emergency_caller_sid.to_s.size > 34
        invalid_properties.push("invalid value for \"emergency_caller_sid\", the character length must be smaller than or equal to 34.")
      end

      if !@emergency_caller_sid.nil? && !@emergency_caller_sid.null? && @emergency_caller_sid.to_s.size < 34
        invalid_properties.push("invalid value for \"emergency_caller_sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^PN[0-9a-fA-F]{32}$/
      if !@emergency_caller_sid.nil? && !@emergency_caller_sid.null? && @emergency_caller_sid !~ pattern
        invalid_properties.push("invalid value for \"emergency_caller_sid\", must conform to the pattern #{pattern}.")
      end

      if !@sid.nil? && !@sid.null? && @sid.to_s.size > 34
        invalid_properties.push("invalid value for \"sid\", the character length must be smaller than or equal to 34.")
      end

      if !@sid.nil? && !@sid.null? && @sid.to_s.size < 34
        invalid_properties.push("invalid value for \"sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^SD[0-9a-fA-F]{32}$/
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
      return false if !@byoc_trunk_sid.nil? && !@byoc_trunk_sid.null? && @byoc_trunk_sid.to_s.size > 34
      return false if !@byoc_trunk_sid.nil? && !@byoc_trunk_sid.null? && @byoc_trunk_sid.to_s.size < 34
      return false if !@byoc_trunk_sid.nil? && !@byoc_trunk_sid.null? && @byoc_trunk_sid !~ /^BY[0-9a-fA-F]{32}$/
      return false if !@emergency_caller_sid.nil? && !@emergency_caller_sid.null? && @emergency_caller_sid.to_s.size > 34
      return false if !@emergency_caller_sid.nil? && !@emergency_caller_sid.null? && @emergency_caller_sid.to_s.size < 34
      return false if !@emergency_caller_sid.nil? && !@emergency_caller_sid.null? && @emergency_caller_sid !~ /^PN[0-9a-fA-F]{32}$/
      return false if !@sid.nil? && !@sid.null? && @sid.to_s.size > 34
      return false if !@sid.nil? && !@sid.null? && @sid.to_s.size < 34
      return false if !@sid.nil? && !@sid.null? && @sid !~ /^SD[0-9a-fA-F]{32}$/
      voice_fallback_method_validator = EnumAttributeValidator.new("String", ["HEAD", "GET", "POST", "PATCH", "PUT", "DELETE"])
      return false unless voice_fallback_method_validator.valid?(@voice_fallback_method)
      voice_method_validator = EnumAttributeValidator.new("String", ["HEAD", "GET", "POST", "PATCH", "PUT", "DELETE"])
      return false unless voice_method_validator.valid?(@voice_method)
      voice_status_callback_method_validator = EnumAttributeValidator.new("String", ["HEAD", "GET", "POST", "PATCH", "PUT", "DELETE"])
      return false unless voice_status_callback_method_validator.valid?(@voice_status_callback_method)
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
    # @param [Object] byoc_trunk_sid Value to be assigned
    def byoc_trunk_sid=(byoc_trunk_sid)
      if !byoc_trunk_sid.nil? && !@byoc_trunk_sid.null? && byoc_trunk_sid.to_s.size > 34
        raise ArgumentError.new("invalid value for \"byoc_trunk_sid\", the character length must be smaller than or equal to 34.")
      end

      if !byoc_trunk_sid.nil? && !@byoc_trunk_sid.null? && byoc_trunk_sid.to_s.size < 34
        raise ArgumentError.new("invalid value for \"byoc_trunk_sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^BY[0-9a-fA-F]{32}$/
      if !byoc_trunk_sid.nil? && !@byoc_trunk_sid.null? && byoc_trunk_sid !~ pattern
        raise ArgumentError.new("invalid value for \"byoc_trunk_sid\", must conform to the pattern #{pattern}.")
      end

      @byoc_trunk_sid = byoc_trunk_sid
    end

    # Custom attribute writer method with validation
    # @param [Object] emergency_caller_sid Value to be assigned
    def emergency_caller_sid=(emergency_caller_sid)
      if !emergency_caller_sid.nil? && !@emergency_caller_sid.null? && emergency_caller_sid.to_s.size > 34
        raise ArgumentError.new("invalid value for \"emergency_caller_sid\", the character length must be smaller than or equal to 34.")
      end

      if !emergency_caller_sid.nil? && !@emergency_caller_sid.null? && emergency_caller_sid.to_s.size < 34
        raise ArgumentError.new("invalid value for \"emergency_caller_sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^PN[0-9a-fA-F]{32}$/
      if !emergency_caller_sid.nil? && !@emergency_caller_sid.null? && emergency_caller_sid !~ pattern
        raise ArgumentError.new("invalid value for \"emergency_caller_sid\", must conform to the pattern #{pattern}.")
      end

      @emergency_caller_sid = emergency_caller_sid
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

      pattern = /^SD[0-9a-fA-F]{32}$/
      if !sid.nil? && !@sid.null? && sid !~ pattern
        raise ArgumentError.new("invalid value for \"sid\", must conform to the pattern #{pattern}.")
      end

      @sid = sid
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
    # @param [Object] voice_status_callback_method Object to be assigned
    def voice_status_callback_method=(voice_status_callback_method)
      validator = EnumAttributeValidator.new("String", ["HEAD", "GET", "POST", "PATCH", "PUT", "DELETE"])
      unless validator.valid?(voice_status_callback_method)
        raise ArgumentError.new("invalid value for \"voice_status_callback_method\", must be one of #{validator.allowable_values}.")
      end
      @voice_status_callback_method = voice_status_callback_method
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.same?(o)
      self.class == o.class &&
        account_sid == o.account_sid &&
        api_version == o.api_version &&
        auth_type == o.auth_type &&
        byoc_trunk_sid == o.byoc_trunk_sid &&
        date_created == o.date_created &&
        date_updated == o.date_updated &&
        domain_name == o.domain_name &&
        emergency_caller_sid == o.emergency_caller_sid &&
        emergency_calling_enabled == o.emergency_calling_enabled &&
        friendly_name == o.friendly_name &&
        secure == o.secure &&
        sid == o.sid &&
        sip_registration == o.sip_registration &&
        subresource_uris == o.subresource_uris &&
        uri == o.uri &&
        voice_fallback_method == o.voice_fallback_method &&
        voice_fallback_url == o.voice_fallback_url &&
        voice_method == o.voice_method &&
        voice_status_callback_method == o.voice_status_callback_method &&
        voice_status_callback_url == o.voice_status_callback_url &&
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
      [account_sid, api_version, auth_type, byoc_trunk_sid, date_created, date_updated, domain_name, emergency_caller_sid, emergency_calling_enabled, friendly_name, secure, sid, sip_registration, subresource_uris, uri, voice_fallback_method, voice_fallback_url, voice_method, voice_status_callback_method, voice_status_callback_url, voice_url].hash
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
