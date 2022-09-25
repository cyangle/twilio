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
  class AvailablePhoneNumberCountryAvailablePhoneNumberVoip
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Json

    # Optional properties

    # The type of Address resource the phone number requires
    @[JSON::Field(key: "address_requirements", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: address_requirements.nil? && !address_requirements_present?)]
    getter address_requirements : String? = nil

    @[JSON::Field(ignore: true)]
    property? address_requirements_present : Bool = false

    # Whether the phone number is new to the Twilio platform
    @[JSON::Field(key: "beta", type: Bool?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: beta.nil? && !beta_present?)]
    getter beta : Bool? = nil

    @[JSON::Field(ignore: true)]
    property? beta_present : Bool = false

    @[JSON::Field(key: "capabilities", type: AvailablePhoneNumberCountryAvailablePhoneNumberLocalCapabilities?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: capabilities.nil? && !capabilities_present?)]
    getter capabilities : AvailablePhoneNumberCountryAvailablePhoneNumberLocalCapabilities? = nil

    @[JSON::Field(ignore: true)]
    property? capabilities_present : Bool = false

    # A formatted version of the phone number
    @[JSON::Field(key: "friendly_name", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: friendly_name.nil? && !friendly_name_present?)]
    getter friendly_name : String? = nil

    @[JSON::Field(ignore: true)]
    property? friendly_name_present : Bool = false

    # The ISO country code of this phone number
    @[JSON::Field(key: "iso_country", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: iso_country.nil? && !iso_country_present?)]
    getter iso_country : String? = nil

    @[JSON::Field(ignore: true)]
    property? iso_country_present : Bool = false

    # The LATA of this phone number
    @[JSON::Field(key: "lata", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: lata.nil? && !lata_present?)]
    getter lata : String? = nil

    @[JSON::Field(ignore: true)]
    property? lata_present : Bool = false

    # The latitude of this phone number's location
    @[JSON::Field(key: "latitude", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: latitude.nil? && !latitude_present?)]
    getter latitude : String? = nil

    @[JSON::Field(ignore: true)]
    property? latitude_present : Bool = false

    # The locality or city of this phone number's location
    @[JSON::Field(key: "locality", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: locality.nil? && !locality_present?)]
    getter locality : String? = nil

    @[JSON::Field(ignore: true)]
    property? locality_present : Bool = false

    # The longitude of this phone number's location
    @[JSON::Field(key: "longitude", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: longitude.nil? && !longitude_present?)]
    getter longitude : String? = nil

    @[JSON::Field(ignore: true)]
    property? longitude_present : Bool = false

    # The phone number in E.164 format
    @[JSON::Field(key: "phone_number", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: phone_number.nil? && !phone_number_present?)]
    getter phone_number : String? = nil

    @[JSON::Field(ignore: true)]
    property? phone_number_present : Bool = false

    # The postal or ZIP code of this phone number's location
    @[JSON::Field(key: "postal_code", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: postal_code.nil? && !postal_code_present?)]
    getter postal_code : String? = nil

    @[JSON::Field(ignore: true)]
    property? postal_code_present : Bool = false

    # The rate center of this phone number
    @[JSON::Field(key: "rate_center", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: rate_center.nil? && !rate_center_present?)]
    getter rate_center : String? = nil

    @[JSON::Field(ignore: true)]
    property? rate_center_present : Bool = false

    # The two-letter state or province abbreviation of this phone number's location
    @[JSON::Field(key: "region", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: region.nil? && !region_present?)]
    getter region : String? = nil

    @[JSON::Field(ignore: true)]
    property? region_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @address_requirements : String? = nil,
      @beta : Bool? = nil,
      @capabilities : AvailablePhoneNumberCountryAvailablePhoneNumberLocalCapabilities? = nil,
      @friendly_name : String? = nil,
      @iso_country : String? = nil,
      @lata : String? = nil,
      @latitude : String? = nil,
      @locality : String? = nil,
      @longitude : String? = nil,
      @phone_number : String? = nil,
      @postal_code : String? = nil,
      @rate_center : String? = nil,
      @region : String? = nil
    )
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

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] address_requirements Object to be assigned
    def address_requirements=(address_requirements : String?)
      if address_requirements.nil?
        return @address_requirements = nil
      end
      @address_requirements = address_requirements
    end # Custom attribute writer method checking allowed values (enum).
    # @param [Object] beta Object to be assigned
    def beta=(beta : Bool?)
      if beta.nil?
        return @beta = nil
      end
      @beta = beta
    end # Custom attribute writer method checking allowed values (enum).
    # @param [Object] capabilities Object to be assigned
    def capabilities=(capabilities : AvailablePhoneNumberCountryAvailablePhoneNumberLocalCapabilities?)
      if capabilities.nil?
        return @capabilities = nil
      end
      @capabilities = capabilities
    end # Custom attribute writer method checking allowed values (enum).
    # @param [Object] friendly_name Object to be assigned
    def friendly_name=(friendly_name : String?)
      if friendly_name.nil?
        return @friendly_name = nil
      end
      @friendly_name = friendly_name
    end # Custom attribute writer method checking allowed values (enum).
    # @param [Object] iso_country Object to be assigned
    def iso_country=(iso_country : String?)
      if iso_country.nil?
        return @iso_country = nil
      end
      @iso_country = iso_country
    end # Custom attribute writer method checking allowed values (enum).
    # @param [Object] lata Object to be assigned
    def lata=(lata : String?)
      if lata.nil?
        return @lata = nil
      end
      @lata = lata
    end # Custom attribute writer method checking allowed values (enum).
    # @param [Object] latitude Object to be assigned
    def latitude=(latitude : String?)
      if latitude.nil?
        return @latitude = nil
      end
      @latitude = latitude
    end # Custom attribute writer method checking allowed values (enum).
    # @param [Object] locality Object to be assigned
    def locality=(locality : String?)
      if locality.nil?
        return @locality = nil
      end
      @locality = locality
    end # Custom attribute writer method checking allowed values (enum).
    # @param [Object] longitude Object to be assigned
    def longitude=(longitude : String?)
      if longitude.nil?
        return @longitude = nil
      end
      @longitude = longitude
    end # Custom attribute writer method checking allowed values (enum).
    # @param [Object] phone_number Object to be assigned
    def phone_number=(phone_number : String?)
      if phone_number.nil?
        return @phone_number = nil
      end
      @phone_number = phone_number
    end # Custom attribute writer method checking allowed values (enum).
    # @param [Object] postal_code Object to be assigned
    def postal_code=(postal_code : String?)
      if postal_code.nil?
        return @postal_code = nil
      end
      @postal_code = postal_code
    end # Custom attribute writer method checking allowed values (enum).
    # @param [Object] rate_center Object to be assigned
    def rate_center=(rate_center : String?)
      if rate_center.nil?
        return @rate_center = nil
      end
      @rate_center = rate_center
    end # Custom attribute writer method checking allowed values (enum).
    # @param [Object] region Object to be assigned
    def region=(region : String?)
      if region.nil?
        return @region = nil
      end
      @region = region
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@address_requirements, @address_requirements_present, @beta, @beta_present, @capabilities, @capabilities_present, @friendly_name, @friendly_name_present, @iso_country, @iso_country_present, @lata, @lata_present, @latitude, @latitude_present, @locality, @locality_present, @longitude, @longitude_present, @phone_number, @phone_number_present, @postal_code, @postal_code_present, @rate_center, @rate_center_present, @region, @region_present)
  end
end
