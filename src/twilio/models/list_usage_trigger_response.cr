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
  class ListUsageTriggerResponse
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties
    @[JSON::Field(key: "end", type: Int32?, presence: true, ignore_serialize: _end.nil? && !_end_present?)]
    property _end : Int32?

    @[JSON::Field(ignore: true)]
    property? _end_present : Bool = false

    @[JSON::Field(key: "first_page_uri", type: String?, presence: true, ignore_serialize: first_page_uri.nil? && !first_page_uri_present?)]
    property first_page_uri : String?

    @[JSON::Field(ignore: true)]
    property? first_page_uri_present : Bool = false

    @[JSON::Field(key: "next_page_uri", type: String?, presence: true, ignore_serialize: next_page_uri.nil? && !next_page_uri_present?)]
    property next_page_uri : String?

    @[JSON::Field(ignore: true)]
    property? next_page_uri_present : Bool = false

    @[JSON::Field(key: "page", type: Int32?, presence: true, ignore_serialize: page.nil? && !page_present?)]
    property page : Int32?

    @[JSON::Field(ignore: true)]
    property? page_present : Bool = false

    @[JSON::Field(key: "page_size", type: Int32?, presence: true, ignore_serialize: page_size.nil? && !page_size_present?)]
    property page_size : Int32?

    @[JSON::Field(ignore: true)]
    property? page_size_present : Bool = false

    @[JSON::Field(key: "previous_page_uri", type: String?, presence: true, ignore_serialize: previous_page_uri.nil? && !previous_page_uri_present?)]
    property previous_page_uri : String?

    @[JSON::Field(ignore: true)]
    property? previous_page_uri_present : Bool = false

    @[JSON::Field(key: "start", type: Int32?, presence: true, ignore_serialize: start.nil? && !start_present?)]
    property start : Int32?

    @[JSON::Field(ignore: true)]
    property? start_present : Bool = false

    @[JSON::Field(key: "uri", type: String?, presence: true, ignore_serialize: uri.nil? && !uri_present?)]
    property uri : String?

    @[JSON::Field(ignore: true)]
    property? uri_present : Bool = false

    @[JSON::Field(key: "usage_triggers", type: Array(UsageUsageTrigger)?, presence: true, ignore_serialize: usage_triggers.nil? && !usage_triggers_present?)]
    property usage_triggers : Array(UsageUsageTrigger)?

    @[JSON::Field(ignore: true)]
    property? usage_triggers_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(*, @_end : Int32? = nil, @first_page_uri : String? = nil, @next_page_uri : String? = nil, @page : Int32? = nil, @page_size : Int32? = nil, @previous_page_uri : String? = nil, @start : Int32? = nil, @uri : String? = nil, @usage_triggers : Array(UsageUsageTrigger)? = nil)
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.same?(o)
      self.class == o.class &&
        _end == o._end &&
        first_page_uri == o.first_page_uri &&
        next_page_uri == o.next_page_uri &&
        page == o.page &&
        page_size == o.page_size &&
        previous_page_uri == o.previous_page_uri &&
        start == o.start &&
        uri == o.uri &&
        usage_triggers == o.usage_triggers
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [_end, first_page_uri, next_page_uri, page, page_size, previous_page_uri, start, uri, usage_triggers].hash
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
