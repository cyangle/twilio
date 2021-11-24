#  Twilio - Api
#
# This is the public Twilio REST API.
#
# The version of the OpenAPI document: 1.23.1
# Contact: support@twilio.com
# Generated by: https://openapi-generator.tech
# OpenAPI Generator version: 5.2.1
#

require "nason"
require "time"
require "log"

module Twilio
  class RecordingRecordingAddOnResultRecordingAddOnResultPayload
    include NASON::Serializable

    # Optional properties
    # The SID of the Account that created the resource
    @[NASON::Field(key: "account_sid", type: String? | Null, nillable: true)]
    property account_sid : String? | Null

    # The SID of the Add-on configuration
    @[NASON::Field(key: "add_on_configuration_sid", type: String? | Null, nillable: true)]
    property add_on_configuration_sid : String? | Null

    # The SID of the AddOnResult to which the payload belongs
    @[NASON::Field(key: "add_on_result_sid", type: String? | Null, nillable: true)]
    property add_on_result_sid : String? | Null

    # The SID of the Add-on to which the result belongs
    @[NASON::Field(key: "add_on_sid", type: String? | Null, nillable: true)]
    property add_on_sid : String? | Null

    # The MIME type of the payload
    @[NASON::Field(key: "content_type", type: String? | Null, nillable: true)]
    property content_type : String? | Null

    # The RFC 2822 date and time in GMT that the resource was created
    @[NASON::Field(key: "date_created", type: String? | Null, nillable: true)]
    property date_created : String? | Null

    # The RFC 2822 date and time in GMT that the resource was last updated
    @[NASON::Field(key: "date_updated", type: String? | Null, nillable: true)]
    property date_updated : String? | Null

    # The string that describes the payload
    @[NASON::Field(key: "label", type: String? | Null, nillable: true)]
    property label : String? | Null

    # The SID of the recording to which the AddOnResult resource that contains the payload belongs
    @[NASON::Field(key: "reference_sid", type: String? | Null, nillable: true)]
    property reference_sid : String? | Null

    # The unique string that identifies the resource
    @[NASON::Field(key: "sid", type: String? | Null, nillable: true)]
    property sid : String? | Null

    # Account Instance Subresources
    @[NASON::Field(key: "subresource_uris", type: Hash(String, String)? | Null, nillable: true)]
    property subresource_uris : Hash(String, String)? | Null

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(*, @account_sid : String? | Null = nil, @add_on_configuration_sid : String? | Null = nil, @add_on_result_sid : String? | Null = nil, @add_on_sid : String? | Null = nil, @content_type : String? | Null = nil, @date_created : String? | Null = nil, @date_updated : String? | Null = nil, @label : String? | Null = nil, @reference_sid : String? | Null = nil, @sid : String? | Null = nil, @subresource_uris : Hash(String, String)? | Null = nil)
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

      if !@add_on_configuration_sid.nil? && !@add_on_configuration_sid.null? && @add_on_configuration_sid.to_s.size > 34
        invalid_properties.push("invalid value for \"add_on_configuration_sid\", the character length must be smaller than or equal to 34.")
      end

      if !@add_on_configuration_sid.nil? && !@add_on_configuration_sid.null? && @add_on_configuration_sid.to_s.size < 34
        invalid_properties.push("invalid value for \"add_on_configuration_sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^XE[0-9a-fA-F]{32}$/
      if !@add_on_configuration_sid.nil? && !@add_on_configuration_sid.null? && @add_on_configuration_sid !~ pattern
        invalid_properties.push("invalid value for \"add_on_configuration_sid\", must conform to the pattern #{pattern}.")
      end

      if !@add_on_result_sid.nil? && !@add_on_result_sid.null? && @add_on_result_sid.to_s.size > 34
        invalid_properties.push("invalid value for \"add_on_result_sid\", the character length must be smaller than or equal to 34.")
      end

      if !@add_on_result_sid.nil? && !@add_on_result_sid.null? && @add_on_result_sid.to_s.size < 34
        invalid_properties.push("invalid value for \"add_on_result_sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^XR[0-9a-fA-F]{32}$/
      if !@add_on_result_sid.nil? && !@add_on_result_sid.null? && @add_on_result_sid !~ pattern
        invalid_properties.push("invalid value for \"add_on_result_sid\", must conform to the pattern #{pattern}.")
      end

      if !@add_on_sid.nil? && !@add_on_sid.null? && @add_on_sid.to_s.size > 34
        invalid_properties.push("invalid value for \"add_on_sid\", the character length must be smaller than or equal to 34.")
      end

      if !@add_on_sid.nil? && !@add_on_sid.null? && @add_on_sid.to_s.size < 34
        invalid_properties.push("invalid value for \"add_on_sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^XB[0-9a-fA-F]{32}$/
      if !@add_on_sid.nil? && !@add_on_sid.null? && @add_on_sid !~ pattern
        invalid_properties.push("invalid value for \"add_on_sid\", must conform to the pattern #{pattern}.")
      end

      if !@reference_sid.nil? && !@reference_sid.null? && @reference_sid.to_s.size > 34
        invalid_properties.push("invalid value for \"reference_sid\", the character length must be smaller than or equal to 34.")
      end

      if !@reference_sid.nil? && !@reference_sid.null? && @reference_sid.to_s.size < 34
        invalid_properties.push("invalid value for \"reference_sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^RE[0-9a-fA-F]{32}$/
      if !@reference_sid.nil? && !@reference_sid.null? && @reference_sid !~ pattern
        invalid_properties.push("invalid value for \"reference_sid\", must conform to the pattern #{pattern}.")
      end

      if !@sid.nil? && !@sid.null? && @sid.to_s.size > 34
        invalid_properties.push("invalid value for \"sid\", the character length must be smaller than or equal to 34.")
      end

      if !@sid.nil? && !@sid.null? && @sid.to_s.size < 34
        invalid_properties.push("invalid value for \"sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^XH[0-9a-fA-F]{32}$/
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
      return false if !@add_on_configuration_sid.nil? && !@add_on_configuration_sid.null? && @add_on_configuration_sid.to_s.size > 34
      return false if !@add_on_configuration_sid.nil? && !@add_on_configuration_sid.null? && @add_on_configuration_sid.to_s.size < 34
      return false if !@add_on_configuration_sid.nil? && !@add_on_configuration_sid.null? && @add_on_configuration_sid !~ /^XE[0-9a-fA-F]{32}$/
      return false if !@add_on_result_sid.nil? && !@add_on_result_sid.null? && @add_on_result_sid.to_s.size > 34
      return false if !@add_on_result_sid.nil? && !@add_on_result_sid.null? && @add_on_result_sid.to_s.size < 34
      return false if !@add_on_result_sid.nil? && !@add_on_result_sid.null? && @add_on_result_sid !~ /^XR[0-9a-fA-F]{32}$/
      return false if !@add_on_sid.nil? && !@add_on_sid.null? && @add_on_sid.to_s.size > 34
      return false if !@add_on_sid.nil? && !@add_on_sid.null? && @add_on_sid.to_s.size < 34
      return false if !@add_on_sid.nil? && !@add_on_sid.null? && @add_on_sid !~ /^XB[0-9a-fA-F]{32}$/
      return false if !@reference_sid.nil? && !@reference_sid.null? && @reference_sid.to_s.size > 34
      return false if !@reference_sid.nil? && !@reference_sid.null? && @reference_sid.to_s.size < 34
      return false if !@reference_sid.nil? && !@reference_sid.null? && @reference_sid !~ /^RE[0-9a-fA-F]{32}$/
      return false if !@sid.nil? && !@sid.null? && @sid.to_s.size > 34
      return false if !@sid.nil? && !@sid.null? && @sid.to_s.size < 34
      return false if !@sid.nil? && !@sid.null? && @sid !~ /^XH[0-9a-fA-F]{32}$/
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
    # @param [Object] add_on_configuration_sid Value to be assigned
    def add_on_configuration_sid=(add_on_configuration_sid)
      if !add_on_configuration_sid.nil? && !@add_on_configuration_sid.null? && add_on_configuration_sid.to_s.size > 34
        raise ArgumentError.new("invalid value for \"add_on_configuration_sid\", the character length must be smaller than or equal to 34.")
      end

      if !add_on_configuration_sid.nil? && !@add_on_configuration_sid.null? && add_on_configuration_sid.to_s.size < 34
        raise ArgumentError.new("invalid value for \"add_on_configuration_sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^XE[0-9a-fA-F]{32}$/
      if !add_on_configuration_sid.nil? && !@add_on_configuration_sid.null? && add_on_configuration_sid !~ pattern
        raise ArgumentError.new("invalid value for \"add_on_configuration_sid\", must conform to the pattern #{pattern}.")
      end

      @add_on_configuration_sid = add_on_configuration_sid
    end

    # Custom attribute writer method with validation
    # @param [Object] add_on_result_sid Value to be assigned
    def add_on_result_sid=(add_on_result_sid)
      if !add_on_result_sid.nil? && !@add_on_result_sid.null? && add_on_result_sid.to_s.size > 34
        raise ArgumentError.new("invalid value for \"add_on_result_sid\", the character length must be smaller than or equal to 34.")
      end

      if !add_on_result_sid.nil? && !@add_on_result_sid.null? && add_on_result_sid.to_s.size < 34
        raise ArgumentError.new("invalid value for \"add_on_result_sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^XR[0-9a-fA-F]{32}$/
      if !add_on_result_sid.nil? && !@add_on_result_sid.null? && add_on_result_sid !~ pattern
        raise ArgumentError.new("invalid value for \"add_on_result_sid\", must conform to the pattern #{pattern}.")
      end

      @add_on_result_sid = add_on_result_sid
    end

    # Custom attribute writer method with validation
    # @param [Object] add_on_sid Value to be assigned
    def add_on_sid=(add_on_sid)
      if !add_on_sid.nil? && !@add_on_sid.null? && add_on_sid.to_s.size > 34
        raise ArgumentError.new("invalid value for \"add_on_sid\", the character length must be smaller than or equal to 34.")
      end

      if !add_on_sid.nil? && !@add_on_sid.null? && add_on_sid.to_s.size < 34
        raise ArgumentError.new("invalid value for \"add_on_sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^XB[0-9a-fA-F]{32}$/
      if !add_on_sid.nil? && !@add_on_sid.null? && add_on_sid !~ pattern
        raise ArgumentError.new("invalid value for \"add_on_sid\", must conform to the pattern #{pattern}.")
      end

      @add_on_sid = add_on_sid
    end

    # Custom attribute writer method with validation
    # @param [Object] reference_sid Value to be assigned
    def reference_sid=(reference_sid)
      if !reference_sid.nil? && !@reference_sid.null? && reference_sid.to_s.size > 34
        raise ArgumentError.new("invalid value for \"reference_sid\", the character length must be smaller than or equal to 34.")
      end

      if !reference_sid.nil? && !@reference_sid.null? && reference_sid.to_s.size < 34
        raise ArgumentError.new("invalid value for \"reference_sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^RE[0-9a-fA-F]{32}$/
      if !reference_sid.nil? && !@reference_sid.null? && reference_sid !~ pattern
        raise ArgumentError.new("invalid value for \"reference_sid\", must conform to the pattern #{pattern}.")
      end

      @reference_sid = reference_sid
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

      pattern = /^XH[0-9a-fA-F]{32}$/
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
    # @return [Integer] Hash code
    def hash
      [account_sid, add_on_configuration_sid, add_on_result_sid, add_on_sid, content_type, date_created, date_updated, label, reference_sid, sid, subresource_uris].hash
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
