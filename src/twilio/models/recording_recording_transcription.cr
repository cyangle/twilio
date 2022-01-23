#  Twilio - Api
#
# This is the public Twilio REST API.
#
# The version of the OpenAPI document: 1.23.1
# Contact: support@twilio.com
# Generated by: https://openapi-generator.tech
#

require "nason"
require "time"
require "log"

module Twilio
  class RecordingRecordingTranscription
    include NASON::Serializable

    # Optional properties
    # The SID of the Account that created the resource
    @[NASON::Field(key: "account_sid", type: String? | Null, nillable: true)]
    property account_sid : String? | Null

    # The API version used to create the transcription
    @[NASON::Field(key: "api_version", type: String? | Null, nillable: true)]
    property api_version : String? | Null

    # The RFC 2822 date and time in GMT that the resource was created
    @[NASON::Field(key: "date_created", type: Time? | Null, converter: Time::RFC2822Converter, nillable: true)]
    property date_created : Time? | Null

    # The RFC 2822 date and time in GMT that the resource was last updated
    @[NASON::Field(key: "date_updated", type: Time? | Null, converter: Time::RFC2822Converter, nillable: true)]
    property date_updated : Time? | Null

    # The duration of the transcribed audio in seconds.
    @[NASON::Field(key: "duration", type: String? | Null, nillable: true)]
    property duration : String? | Null

    # The charge for the transcription
    @[NASON::Field(key: "price", type: String? | Null, nillable: true)]
    property price : String? | Null

    # The currency in which price is measured
    @[NASON::Field(key: "price_unit", type: String? | Null, nillable: true)]
    property price_unit : String? | Null

    # The SID that identifies the transcription's recording
    @[NASON::Field(key: "recording_sid", type: String? | Null, nillable: true)]
    property recording_sid : String? | Null

    # The unique string that identifies the resource
    @[NASON::Field(key: "sid", type: String? | Null, nillable: true)]
    property sid : String? | Null

    # The status of the transcription
    @[NASON::Field(key: "status", type: String? | Null, nillable: true)]
    property status : String? | Null

    # The text content of the transcription.
    @[NASON::Field(key: "transcription_text", type: String? | Null, nillable: true)]
    property transcription_text : String? | Null

    # The transcription type
    @[NASON::Field(key: "type", type: String? | Null, nillable: true)]
    property _type : String? | Null

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
    def initialize(*, @account_sid : String? | Null = nil, @api_version : String? | Null = nil, @date_created : Time? | Null = nil, @date_updated : Time? | Null = nil, @duration : String? | Null = nil, @price : String? | Null = nil, @price_unit : String? | Null = nil, @recording_sid : String? | Null = nil, @sid : String? | Null = nil, @status : String? | Null = nil, @transcription_text : String? | Null = nil, @_type : String? | Null = nil, @uri : String? | Null = nil)
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

      if !@recording_sid.nil? && !@recording_sid.null? && @recording_sid.to_s.size > 34
        invalid_properties.push("invalid value for \"recording_sid\", the character length must be smaller than or equal to 34.")
      end

      if !@recording_sid.nil? && !@recording_sid.null? && @recording_sid.to_s.size < 34
        invalid_properties.push("invalid value for \"recording_sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^RE[0-9a-fA-F]{32}$/
      if !@recording_sid.nil? && !@recording_sid.null? && @recording_sid !~ pattern
        invalid_properties.push("invalid value for \"recording_sid\", must conform to the pattern #{pattern}.")
      end

      if !@sid.nil? && !@sid.null? && @sid.to_s.size > 34
        invalid_properties.push("invalid value for \"sid\", the character length must be smaller than or equal to 34.")
      end

      if !@sid.nil? && !@sid.null? && @sid.to_s.size < 34
        invalid_properties.push("invalid value for \"sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^TR[0-9a-fA-F]{32}$/
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
      return false if !@recording_sid.nil? && !@recording_sid.null? && @recording_sid.to_s.size > 34
      return false if !@recording_sid.nil? && !@recording_sid.null? && @recording_sid.to_s.size < 34
      return false if !@recording_sid.nil? && !@recording_sid.null? && @recording_sid !~ /^RE[0-9a-fA-F]{32}$/
      return false if !@sid.nil? && !@sid.null? && @sid.to_s.size > 34
      return false if !@sid.nil? && !@sid.null? && @sid.to_s.size < 34
      return false if !@sid.nil? && !@sid.null? && @sid !~ /^TR[0-9a-fA-F]{32}$/
      status_validator = EnumAttributeValidator.new("String", ["in-progress", "completed", "failed"])
      return false unless status_validator.valid?(@status)
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
    # @param [Object] recording_sid Value to be assigned
    def recording_sid=(recording_sid)
      if !recording_sid.nil? && !@recording_sid.null? && recording_sid.to_s.size > 34
        raise ArgumentError.new("invalid value for \"recording_sid\", the character length must be smaller than or equal to 34.")
      end

      if !recording_sid.nil? && !@recording_sid.null? && recording_sid.to_s.size < 34
        raise ArgumentError.new("invalid value for \"recording_sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^RE[0-9a-fA-F]{32}$/
      if !recording_sid.nil? && !@recording_sid.null? && recording_sid !~ pattern
        raise ArgumentError.new("invalid value for \"recording_sid\", must conform to the pattern #{pattern}.")
      end

      @recording_sid = recording_sid
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

      pattern = /^TR[0-9a-fA-F]{32}$/
      if !sid.nil? && !@sid.null? && sid !~ pattern
        raise ArgumentError.new("invalid value for \"sid\", must conform to the pattern #{pattern}.")
      end

      @sid = sid
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new("String", ["in-progress", "completed", "failed"])
      unless validator.valid?(status)
        raise ArgumentError.new("invalid value for \"status\", must be one of #{validator.allowable_values}.")
      end
      @status = status
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.same?(o)
      self.class == o.class &&
        account_sid == o.account_sid &&
        api_version == o.api_version &&
        date_created == o.date_created &&
        date_updated == o.date_updated &&
        duration == o.duration &&
        price == o.price &&
        price_unit == o.price_unit &&
        recording_sid == o.recording_sid &&
        sid == o.sid &&
        status == o.status &&
        transcription_text == o.transcription_text &&
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
      [account_sid, api_version, date_created, date_updated, duration, price, price_unit, recording_sid, sid, status, transcription_text, _type, uri].hash
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
