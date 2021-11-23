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
  class AvailablePhoneNumberCountryAvailablePhoneNumberSharedCost
    include NASON::Serializable

    # Optional properties
    # The type of Address resource the phone number requires
    @[NASON::Field(key: "address_requirements", type: String? | Null, nillable: true)]
    property address_requirements : String? | Null

    # Whether the phone number is new to the Twilio platform
    @[NASON::Field(key: "beta", type: Bool? | Null, nillable: true)]
    property beta : Bool? | Null

    @[NASON::Field(key: "capabilities", type: AvailablePhoneNumberCountryAvailablePhoneNumberLocalCapabilities? | Null, nillable: true)]
    property capabilities : AvailablePhoneNumberCountryAvailablePhoneNumberLocalCapabilities? | Null

    # A formatted version of the phone number
    @[NASON::Field(key: "friendly_name", type: String? | Null, nillable: true)]
    property friendly_name : String? | Null

    # The ISO country code of this phone number
    @[NASON::Field(key: "iso_country", type: String? | Null, nillable: true)]
    property iso_country : String? | Null

    # The LATA of this phone number
    @[NASON::Field(key: "lata", type: String? | Null, nillable: true)]
    property lata : String? | Null

    # The latitude of this phone number's location
    @[NASON::Field(key: "latitude", type: Float64? | Null, nillable: true)]
    property latitude : Float64? | Null

    # The locality or city of this phone number's location
    @[NASON::Field(key: "locality", type: String? | Null, nillable: true)]
    property locality : String? | Null

    # The longitude of this phone number's location
    @[NASON::Field(key: "longitude", type: Float64? | Null, nillable: true)]
    property longitude : Float64? | Null

    # The phone number in E.164 format
    @[NASON::Field(key: "phone_number", type: String? | Null, nillable: true)]
    property phone_number : String? | Null

    # The postal or ZIP code of this phone number's location
    @[NASON::Field(key: "postal_code", type: String? | Null, nillable: true)]
    property postal_code : String? | Null

    # The rate center of this phone number
    @[NASON::Field(key: "rate_center", type: String? | Null, nillable: true)]
    property rate_center : String? | Null

    # The two-letter state or province abbreviation of this phone number's location
    @[NASON::Field(key: "region", type: String? | Null, nillable: true)]
    property region : String? | Null

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(*, @address_requirements : String? | Null = nil, @beta : Bool? | Null = nil, @capabilities : AvailablePhoneNumberCountryAvailablePhoneNumberLocalCapabilities? | Null = nil, @friendly_name : String? | Null = nil, @iso_country : String? | Null = nil, @lata : String? | Null = nil, @latitude : Float64? | Null = nil, @locality : String? | Null = nil, @longitude : Float64? | Null = nil, @phone_number : String? | Null = nil, @postal_code : String? | Null = nil, @rate_center : String? | Null = nil, @region : String? | Null = nil)
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
        address_requirements == o.address_requirements &&
        beta == o.beta &&
        capabilities == o.capabilities &&
        friendly_name == o.friendly_name &&
        iso_country == o.iso_country &&
        lata == o.lata &&
        latitude == o.latitude &&
        locality == o.locality &&
        longitude == o.longitude &&
        phone_number == o.phone_number &&
        postal_code == o.postal_code &&
        rate_center == o.rate_center &&
        region == o.region
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [address_requirements, beta, capabilities, friendly_name, iso_country, lata, latitude, locality, longitude, phone_number, postal_code, rate_center, region].hash
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
