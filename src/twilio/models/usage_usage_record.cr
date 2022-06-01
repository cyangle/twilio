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
  class UsageUsageRecord
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties
    # The SID of the Account accrued the usage
    @[JSON::Field(key: "account_sid", type: String?, presence: true, ignore_serialize: account_sid.nil? && !account_sid_present?)]
    getter account_sid : String?

    @[JSON::Field(ignore: true)]
    property? account_sid_present : Bool = false

    # The API version used to create the resource
    @[JSON::Field(key: "api_version", type: String?, presence: true, ignore_serialize: api_version.nil? && !api_version_present?)]
    property api_version : String?

    @[JSON::Field(ignore: true)]
    property? api_version_present : Bool = false

    # Usage records up to date as of this timestamp
    @[JSON::Field(key: "as_of", type: String?, presence: true, ignore_serialize: as_of.nil? && !as_of_present?)]
    property as_of : String?

    @[JSON::Field(ignore: true)]
    property? as_of_present : Bool = false

    # The category of usage
    @[JSON::Field(key: "category", type: String?, presence: true, ignore_serialize: category.nil? && !category_present?)]
    getter category : String?

    @[JSON::Field(ignore: true)]
    property? category_present : Bool = false

    ENUM_VALIDATOR_FOR_CATEGORY = EnumValidator.new("category", "String", ["a2p-registration-fees", "agent-conference", "answering-machine-detection", "authy-authentications", "authy-calls-outbound", "authy-monthly-fees", "authy-phone-intelligence", "authy-phone-verifications", "authy-sms-outbound", "call-progess-events", "calleridlookups", "calls", "calls-client", "calls-globalconference", "calls-inbound", "calls-inbound-local", "calls-inbound-mobile", "calls-inbound-tollfree", "calls-outbound", "calls-pay-verb-transactions", "calls-recordings", "calls-sip", "calls-sip-inbound", "calls-sip-outbound", "calls-transfers", "carrier-lookups", "conversations", "conversations-api-requests", "conversations-conversation-events", "conversations-endpoint-connectivity", "conversations-events", "conversations-participant-events", "conversations-participants", "cps", "flex-usage", "fraud-lookups", "group-rooms", "group-rooms-data-track", "group-rooms-encrypted-media-recorded", "group-rooms-media-downloaded", "group-rooms-media-recorded", "group-rooms-media-routed", "group-rooms-media-stored", "group-rooms-participant-minutes", "group-rooms-recorded-minutes", "imp-v1-usage", "lookups", "marketplace", "marketplace-algorithmia-named-entity-recognition", "marketplace-cadence-transcription", "marketplace-cadence-translation", "marketplace-capio-speech-to-text", "marketplace-convriza-ababa", "marketplace-deepgram-phrase-detector", "marketplace-digital-segment-business-info", "marketplace-facebook-offline-conversions", "marketplace-google-speech-to-text", "marketplace-ibm-watson-message-insights", "marketplace-ibm-watson-message-sentiment", "marketplace-ibm-watson-recording-analysis", "marketplace-ibm-watson-tone-analyzer", "marketplace-icehook-systems-scout", "marketplace-infogroup-dataaxle-bizinfo", "marketplace-keen-io-contact-center-analytics", "marketplace-marchex-cleancall", "marketplace-marchex-sentiment-analysis-for-sms", "marketplace-marketplace-nextcaller-social-id", "marketplace-mobile-commons-opt-out-classifier", "marketplace-nexiwave-voicemail-to-text", "marketplace-nextcaller-advanced-caller-identification", "marketplace-nomorobo-spam-score", "marketplace-payfone-tcpa-compliance", "marketplace-remeeting-automatic-speech-recognition", "marketplace-tcpa-defense-solutions-blacklist-feed", "marketplace-telo-opencnam", "marketplace-truecnam-true-spam", "marketplace-twilio-caller-name-lookup-us", "marketplace-twilio-carrier-information-lookup", "marketplace-voicebase-pci", "marketplace-voicebase-transcription", "marketplace-voicebase-transcription-custom-vocabulary", "marketplace-whitepages-pro-caller-identification", "marketplace-whitepages-pro-phone-intelligence", "marketplace-whitepages-pro-phone-reputation", "marketplace-wolfarm-spoken-results", "marketplace-wolfram-short-answer", "marketplace-ytica-contact-center-reporting-analytics", "mediastorage", "mms", "mms-inbound", "mms-inbound-longcode", "mms-inbound-shortcode", "mms-messages-carrierfees", "mms-outbound", "mms-outbound-longcode", "mms-outbound-shortcode", "monitor-reads", "monitor-storage", "monitor-writes", "notify", "notify-actions-attempts", "notify-channels", "number-format-lookups", "pchat", "pchat-users", "peer-to-peer-rooms-participant-minutes", "pfax", "pfax-minutes", "pfax-minutes-inbound", "pfax-minutes-outbound", "pfax-pages", "phonenumbers", "phonenumbers-cps", "phonenumbers-emergency", "phonenumbers-local", "phonenumbers-mobile", "phonenumbers-setups", "phonenumbers-tollfree", "premiumsupport", "proxy", "proxy-active-sessions", "pstnconnectivity", "pv", "pv-composition-media-downloaded", "pv-composition-media-encrypted", "pv-composition-media-stored", "pv-composition-minutes", "pv-recording-compositions", "pv-room-participants", "pv-room-participants-au1", "pv-room-participants-br1", "pv-room-participants-ie1", "pv-room-participants-jp1", "pv-room-participants-sg1", "pv-room-participants-us1", "pv-room-participants-us2", "pv-rooms", "pv-sip-endpoint-registrations", "recordings", "recordingstorage", "rooms-group-bandwidth", "rooms-group-minutes", "rooms-peer-to-peer-minutes", "shortcodes", "shortcodes-customerowned", "shortcodes-mms-enablement", "shortcodes-mps", "shortcodes-random", "shortcodes-uk", "shortcodes-vanity", "small-group-rooms", "small-group-rooms-data-track", "small-group-rooms-participant-minutes", "sms", "sms-inbound", "sms-inbound-longcode", "sms-inbound-shortcode", "sms-messages-carrierfees", "sms-messages-features", "sms-messages-features-senderid", "sms-outbound", "sms-outbound-content-inspection", "sms-outbound-longcode", "sms-outbound-shortcode", "speech-recognition", "studio-engagements", "sync", "sync-actions", "sync-endpoint-hours", "sync-endpoint-hours-above-daily-cap", "taskrouter-tasks", "totalprice", "transcriptions", "trunking-cps", "trunking-emergency-calls", "trunking-origination", "trunking-origination-local", "trunking-origination-mobile", "trunking-origination-tollfree", "trunking-recordings", "trunking-secure", "trunking-termination", "turnmegabytes", "turnmegabytes-australia", "turnmegabytes-brasil", "turnmegabytes-germany", "turnmegabytes-india", "turnmegabytes-ireland", "turnmegabytes-japan", "turnmegabytes-singapore", "turnmegabytes-useast", "turnmegabytes-uswest", "twilio-interconnect", "verify-push", "verify-totp", "verify-whatsapp-conversations-business-initiated", "video-recordings", "voice-insights", "voice-insights-client-insights-on-demand-minute", "voice-insights-ptsn-insights-on-demand-minute", "voice-insights-sip-interface-insights-on-demand-minute", "voice-insights-sip-trunking-insights-on-demand-minute", "wireless", "wireless-orders", "wireless-orders-artwork", "wireless-orders-bulk", "wireless-orders-esim", "wireless-orders-starter", "wireless-usage", "wireless-usage-commands", "wireless-usage-commands-africa", "wireless-usage-commands-asia", "wireless-usage-commands-centralandsouthamerica", "wireless-usage-commands-europe", "wireless-usage-commands-home", "wireless-usage-commands-northamerica", "wireless-usage-commands-oceania", "wireless-usage-commands-roaming", "wireless-usage-data", "wireless-usage-data-africa", "wireless-usage-data-asia", "wireless-usage-data-centralandsouthamerica", "wireless-usage-data-custom-additionalmb", "wireless-usage-data-custom-first5mb", "wireless-usage-data-domestic-roaming", "wireless-usage-data-europe", "wireless-usage-data-individual-additionalgb", "wireless-usage-data-individual-firstgb", "wireless-usage-data-international-roaming-canada", "wireless-usage-data-international-roaming-india", "wireless-usage-data-international-roaming-mexico", "wireless-usage-data-northamerica", "wireless-usage-data-oceania", "wireless-usage-data-pooled", "wireless-usage-data-pooled-downlink", "wireless-usage-data-pooled-uplink", "wireless-usage-mrc", "wireless-usage-mrc-custom", "wireless-usage-mrc-individual", "wireless-usage-mrc-pooled", "wireless-usage-mrc-suspended", "wireless-usage-sms", "wireless-usage-voice"])

    # The number of usage events
    @[JSON::Field(key: "count", type: String?, presence: true, ignore_serialize: count.nil? && !count_present?)]
    property count : String?

    @[JSON::Field(ignore: true)]
    property? count_present : Bool = false

    # The units in which count is measured
    @[JSON::Field(key: "count_unit", type: String?, presence: true, ignore_serialize: count_unit.nil? && !count_unit_present?)]
    property count_unit : String?

    @[JSON::Field(ignore: true)]
    property? count_unit_present : Bool = false

    # A plain-language description of the usage category
    @[JSON::Field(key: "description", type: String?, presence: true, ignore_serialize: description.nil? && !description_present?)]
    property description : String?

    @[JSON::Field(ignore: true)]
    property? description_present : Bool = false

    # The last date for which usage is included in the UsageRecord
    @[JSON::Field(key: "end_date", type: Time?, converter: Time::ISO8601DateConverter, presence: true, ignore_serialize: end_date.nil? && !end_date_present?)]
    property end_date : Time?

    @[JSON::Field(ignore: true)]
    property? end_date_present : Bool = false

    # The total price of the usage
    @[JSON::Field(key: "price", type: String?, presence: true, ignore_serialize: price.nil? && !price_present?)]
    property price : String?

    @[JSON::Field(ignore: true)]
    property? price_present : Bool = false

    # The currency in which `price` is measured
    @[JSON::Field(key: "price_unit", type: String?, presence: true, ignore_serialize: price_unit.nil? && !price_unit_present?)]
    property price_unit : String?

    @[JSON::Field(ignore: true)]
    property? price_unit_present : Bool = false

    # The first date for which usage is included in this UsageRecord
    @[JSON::Field(key: "start_date", type: Time?, converter: Time::ISO8601DateConverter, presence: true, ignore_serialize: start_date.nil? && !start_date_present?)]
    property start_date : Time?

    @[JSON::Field(ignore: true)]
    property? start_date_present : Bool = false

    # Account Instance Subresources
    @[JSON::Field(key: "subresource_uris", type: Hash(String, String)?, presence: true, ignore_serialize: subresource_uris.nil? && !subresource_uris_present?)]
    property subresource_uris : Hash(String, String)?

    @[JSON::Field(ignore: true)]
    property? subresource_uris_present : Bool = false

    # The URI of the resource, relative to `https://api.twilio.com`
    @[JSON::Field(key: "uri", type: String?, presence: true, ignore_serialize: uri.nil? && !uri_present?)]
    property uri : String?

    @[JSON::Field(ignore: true)]
    property? uri_present : Bool = false

    # The amount of usage
    @[JSON::Field(key: "usage", type: String?, presence: true, ignore_serialize: usage.nil? && !usage_present?)]
    property usage : String?

    @[JSON::Field(ignore: true)]
    property? usage_present : Bool = false

    # The units in which usage is measured
    @[JSON::Field(key: "usage_unit", type: String?, presence: true, ignore_serialize: usage_unit.nil? && !usage_unit_present?)]
    property usage_unit : String?

    @[JSON::Field(ignore: true)]
    property? usage_unit_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(*, @account_sid : String? = nil, @api_version : String? = nil, @as_of : String? = nil, @category : String? = nil, @count : String? = nil, @count_unit : String? = nil, @description : String? = nil, @end_date : Time? = nil, @price : String? = nil, @price_unit : String? = nil, @start_date : Time? = nil, @subresource_uris : Hash(String, String)? = nil, @uri : String? = nil, @usage : String? = nil, @usage_unit : String? = nil)
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if !@account_sid.nil? && @account_sid.to_s.size > 34
        invalid_properties.push("invalid value for \"account_sid\", the character length must be smaller than or equal to 34.")
      end

      if !@account_sid.nil? && @account_sid.to_s.size < 34
        invalid_properties.push("invalid value for \"account_sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^AC[0-9a-fA-F]{32}$/
      if !@account_sid.nil? && @account_sid !~ pattern
        invalid_properties.push("invalid value for \"account_sid\", must conform to the pattern #{pattern}.")
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR_CATEGORY.error_message) unless ENUM_VALIDATOR_FOR_CATEGORY.valid?(@category)

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@account_sid.nil? && @account_sid.to_s.size > 34
      return false if !@account_sid.nil? && @account_sid.to_s.size < 34
      return false if !@account_sid.nil? && @account_sid !~ /^AC[0-9a-fA-F]{32}$/
      return false unless ENUM_VALIDATOR_FOR_CATEGORY.valid?(@category)
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] account_sid Value to be assigned
    def account_sid=(account_sid)
      if !account_sid.nil? && account_sid.to_s.size > 34
        raise ArgumentError.new("invalid value for \"account_sid\", the character length must be smaller than or equal to 34.")
      end

      if !account_sid.nil? && account_sid.to_s.size < 34
        raise ArgumentError.new("invalid value for \"account_sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^AC[0-9a-fA-F]{32}$/
      if !account_sid.nil? && account_sid !~ pattern
        raise ArgumentError.new("invalid value for \"account_sid\", must conform to the pattern #{pattern}.")
      end

      @account_sid = account_sid
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] category Object to be assigned
    def category=(category)
      ENUM_VALIDATOR_FOR_CATEGORY.valid!(category)
      @category = category
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.same?(o)
      self.class == o.class &&
        account_sid == o.account_sid &&
        api_version == o.api_version &&
        as_of == o.as_of &&
        category == o.category &&
        count == o.count &&
        count_unit == o.count_unit &&
        description == o.description &&
        end_date == o.end_date &&
        price == o.price &&
        price_unit == o.price_unit &&
        start_date == o.start_date &&
        subresource_uris == o.subresource_uris &&
        uri == o.uri &&
        usage == o.usage &&
        usage_unit == o.usage_unit
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [UInt64] Hash code
    def_hash(@account_sid, @api_version, @as_of, @category, @count, @count_unit, @description, @end_date, @price, @price_unit, @start_date, @subresource_uris, @uri, @usage, @usage_unit)
  end
end
