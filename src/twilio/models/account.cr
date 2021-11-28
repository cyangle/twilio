#  Twilio - Api
#
# This is the public Twilio REST API.
#
# The version of the OpenAPI document: 1.23.1
# Contact: support@twilio.com
# Generated by: https://openapi-generator.tech
# OpenAPI Generator version: 5.3.1-SNAPSHOT
#

require "nason"
require "time"
require "log"

module Twilio
  class Account
    include NASON::Serializable

    # Optional properties
    # The authorization token for this account
    @[NASON::Field(key: "auth_token", type: String? | Null, nillable: true)]
    property auth_token : String? | Null

    # The date this account was created
    @[NASON::Field(key: "date_created", type: Time? | Null, converter: Time::RFC2822Converter, nillable: true)]
    property date_created : Time? | Null

    # The date this account was last updated
    @[NASON::Field(key: "date_updated", type: Time? | Null, converter: Time::RFC2822Converter, nillable: true)]
    property date_updated : Time? | Null

    # A human readable description of this account
    @[NASON::Field(key: "friendly_name", type: String? | Null, nillable: true)]
    property friendly_name : String? | Null

    # The unique 34 character id representing the parent of this account
    @[NASON::Field(key: "owner_account_sid", type: String? | Null, nillable: true)]
    property owner_account_sid : String? | Null

    # A 34 character string that uniquely identifies this resource.
    @[NASON::Field(key: "sid", type: String? | Null, nillable: true)]
    property sid : String? | Null

    # The status of this account
    @[NASON::Field(key: "status", type: String? | Null, nillable: true)]
    property status : String? | Null

    # Account Instance Subresources
    @[NASON::Field(key: "subresource_uris", type: Hash(String, String)? | Null, nillable: true)]
    property subresource_uris : Hash(String, String)? | Null

    # The type of this account
    @[NASON::Field(key: "type", type: String? | Null, nillable: true)]
    property _type : String? | Null

    # The URI for this resource, relative to `https://api.twilio.com`
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
    def initialize(*, @auth_token : String? | Null = nil, @date_created : Time? | Null = nil, @date_updated : Time? | Null = nil, @friendly_name : String? | Null = nil, @owner_account_sid : String? | Null = nil, @sid : String? | Null = nil, @status : String? | Null = nil, @subresource_uris : Hash(String, String)? | Null = nil, @_type : String? | Null = nil, @uri : String? | Null = nil)
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new
      if !@owner_account_sid.nil? && !@owner_account_sid.null? && @owner_account_sid.to_s.size > 34
        invalid_properties.push("invalid value for \"owner_account_sid\", the character length must be smaller than or equal to 34.")
      end

      if !@owner_account_sid.nil? && !@owner_account_sid.null? && @owner_account_sid.to_s.size < 34
        invalid_properties.push("invalid value for \"owner_account_sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^AC[0-9a-fA-F]{32}$/
      if !@owner_account_sid.nil? && !@owner_account_sid.null? && @owner_account_sid !~ pattern
        invalid_properties.push("invalid value for \"owner_account_sid\", must conform to the pattern #{pattern}.")
      end

      if !@sid.nil? && !@sid.null? && @sid.to_s.size > 34
        invalid_properties.push("invalid value for \"sid\", the character length must be smaller than or equal to 34.")
      end

      if !@sid.nil? && !@sid.null? && @sid.to_s.size < 34
        invalid_properties.push("invalid value for \"sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^AC[0-9a-fA-F]{32}$/
      if !@sid.nil? && !@sid.null? && @sid !~ pattern
        invalid_properties.push("invalid value for \"sid\", must conform to the pattern #{pattern}.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@owner_account_sid.nil? && !@owner_account_sid.null? && @owner_account_sid.to_s.size > 34
      return false if !@owner_account_sid.nil? && !@owner_account_sid.null? && @owner_account_sid.to_s.size < 34
      return false if !@owner_account_sid.nil? && !@owner_account_sid.null? && @owner_account_sid !~ /^AC[0-9a-fA-F]{32}$/
      return false if !@sid.nil? && !@sid.null? && @sid.to_s.size > 34
      return false if !@sid.nil? && !@sid.null? && @sid.to_s.size < 34
      return false if !@sid.nil? && !@sid.null? && @sid !~ /^AC[0-9a-fA-F]{32}$/
      status_validator = EnumAttributeValidator.new("String", ["active", "suspended", "closed"])
      return false unless status_validator.valid?(@status)
      _type_validator = EnumAttributeValidator.new("String", ["Trial", "Full"])
      return false unless _type_validator.valid?(@_type)
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] owner_account_sid Value to be assigned
    def owner_account_sid=(owner_account_sid)
      if !owner_account_sid.nil? && !@owner_account_sid.null? && owner_account_sid.to_s.size > 34
        raise ArgumentError.new("invalid value for \"owner_account_sid\", the character length must be smaller than or equal to 34.")
      end

      if !owner_account_sid.nil? && !@owner_account_sid.null? && owner_account_sid.to_s.size < 34
        raise ArgumentError.new("invalid value for \"owner_account_sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^AC[0-9a-fA-F]{32}$/
      if !owner_account_sid.nil? && !@owner_account_sid.null? && owner_account_sid !~ pattern
        raise ArgumentError.new("invalid value for \"owner_account_sid\", must conform to the pattern #{pattern}.")
      end

      @owner_account_sid = owner_account_sid
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

      pattern = /^AC[0-9a-fA-F]{32}$/
      if !sid.nil? && !@sid.null? && sid !~ pattern
        raise ArgumentError.new("invalid value for \"sid\", must conform to the pattern #{pattern}.")
      end

      @sid = sid
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new("String", ["active", "suspended", "closed"])
      unless validator.valid?(status)
        raise ArgumentError.new("invalid value for \"status\", must be one of #{validator.allowable_values}.")
      end
      @status = status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] _type Object to be assigned
    def _type=(_type)
      validator = EnumAttributeValidator.new("String", ["Trial", "Full"])
      unless validator.valid?(_type)
        raise ArgumentError.new("invalid value for \"_type\", must be one of #{validator.allowable_values}.")
      end
      @_type = _type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.same?(o)
      self.class == o.class &&
        auth_token == o.auth_token &&
        date_created == o.date_created &&
        date_updated == o.date_updated &&
        friendly_name == o.friendly_name &&
        owner_account_sid == o.owner_account_sid &&
        sid == o.sid &&
        status == o.status &&
        subresource_uris == o.subresource_uris &&
        _type == o._type &&
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
      [auth_token, date_created, date_updated, friendly_name, owner_account_sid, sid, status, subresource_uris, _type, uri].hash
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
