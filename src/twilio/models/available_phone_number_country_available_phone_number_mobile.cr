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
  class AvailablePhoneNumberCountryAvailablePhoneNumberMobile
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties
    # The type of Address resource the phone number requires
    @[JSON::Field(key: "address_requirements", type: String?, presence: true, ignore_serialize: address_requirements.nil? && !address_requirements_present?)]
    property address_requirements : String?

    @[JSON::Field(ignore: true)]
    property? address_requirements_present : Bool = false

    # Whether the phone number is new to the Twilio platform
    @[JSON::Field(key: "beta", type: Bool?, presence: true, ignore_serialize: beta.nil? && !beta_present?)]
    property beta : Bool?

    @[JSON::Field(ignore: true)]
    property? beta_present : Bool = false

    @[JSON::Field(key: "capabilities", type: AvailablePhoneNumberCountryAvailablePhoneNumberLocalCapabilities?, presence: true, ignore_serialize: capabilities.nil? && !capabilities_present?)]
    property capabilities : AvailablePhoneNumberCountryAvailablePhoneNumberLocalCapabilities?

    @[JSON::Field(ignore: true)]
    property? capabilities_present : Bool = false

    # A formatted version of the phone number
    @[JSON::Field(key: "friendly_name", type: String?, presence: true, ignore_serialize: friendly_name.nil? && !friendly_name_present?)]
    property friendly_name : String?

    @[JSON::Field(ignore: true)]
    property? friendly_name_present : Bool = false

    # The ISO country code of this phone number
    @[JSON::Field(key: "iso_country", type: String?, presence: true, ignore_serialize: iso_country.nil? && !iso_country_present?)]
    property iso_country : String?

    @[JSON::Field(ignore: true)]
    property? iso_country_present : Bool = false

    # The LATA of this phone number
    @[JSON::Field(key: "lata", type: String?, presence: true, ignore_serialize: lata.nil? && !lata_present?)]
    property lata : String?

    @[JSON::Field(ignore: true)]
    property? lata_present : Bool = false

    # The latitude of this phone number's location
    @[JSON::Field(key: "latitude", type: String?, presence: true, ignore_serialize: latitude.nil? && !latitude_present?)]
    property latitude : String?

    @[JSON::Field(ignore: true)]
    property? latitude_present : Bool = false

    # The locality or city of this phone number's location
    @[JSON::Field(key: "locality", type: String?, presence: true, ignore_serialize: locality.nil? && !locality_present?)]
    property locality : String?

    @[JSON::Field(ignore: true)]
    property? locality_present : Bool = false

    # The longitude of this phone number's location
    @[JSON::Field(key: "longitude", type: String?, presence: true, ignore_serialize: longitude.nil? && !longitude_present?)]
    property longitude : String?

    @[JSON::Field(ignore: true)]
    property? longitude_present : Bool = false

    # The phone number in E.164 format
    @[JSON::Field(key: "phone_number", type: String?, presence: true, ignore_serialize: phone_number.nil? && !phone_number_present?)]
    property phone_number : String?

    @[JSON::Field(ignore: true)]
    property? phone_number_present : Bool = false

    # The postal or ZIP code of this phone number's location
    @[JSON::Field(key: "postal_code", type: String?, presence: true, ignore_serialize: postal_code.nil? && !postal_code_present?)]
    property postal_code : String?

    @[JSON::Field(ignore: true)]
    property? postal_code_present : Bool = false

    # The rate center of this phone number
    @[JSON::Field(key: "rate_center", type: String?, presence: true, ignore_serialize: rate_center.nil? && !rate_center_present?)]
    property rate_center : String?

    @[JSON::Field(ignore: true)]
    property? rate_center_present : Bool = false

    # The two-letter state or province abbreviation of this phone number's location
    @[JSON::Field(key: "region", type: String?, presence: true, ignore_serialize: region.nil? && !region_present?)]
    property region : String?

    @[JSON::Field(ignore: true)]
    property? region_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(*, @address_requirements : String? = nil, @beta : Bool? = nil, @capabilities : AvailablePhoneNumberCountryAvailablePhoneNumberLocalCapabilities? = nil, @friendly_name : String? = nil, @iso_country : String? = nil, @lata : String? = nil, @latitude : String? = nil, @locality : String? = nil, @longitude : String? = nil, @phone_number : String? = nil, @postal_code : String? = nil, @rate_center : String? = nil, @region : String? = nil)
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
    # @return [UInt64] Hash code
    def_hash(@address_requirements, @beta, @capabilities, @friendly_name, @iso_country, @lata, @latitude, @locality, @longitude, @phone_number, @postal_code, @rate_center, @region)
  end
end
