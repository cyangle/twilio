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
  class UsageUsageTrigger
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties
    # The SID of the Account that this trigger monitors
    @[JSON::Field(key: "account_sid", type: String?, presence: true, ignore_serialize: account_sid.nil? && !account_sid_present?)]
    getter account_sid : String?

    @[JSON::Field(ignore: true)]
    property? account_sid_present : Bool = false

    # The API version used to create the resource
    @[JSON::Field(key: "api_version", type: String?, presence: true, ignore_serialize: api_version.nil? && !api_version_present?)]
    property api_version : String?

    @[JSON::Field(ignore: true)]
    property? api_version_present : Bool = false

    # The HTTP method we use to call callback_url
    @[JSON::Field(key: "callback_method", type: String?, presence: true, ignore_serialize: callback_method.nil? && !callback_method_present?)]
    getter callback_method : String?

    @[JSON::Field(ignore: true)]
    property? callback_method_present : Bool = false

    ENUM_VALIDATOR_FOR_CALLBACK_METHOD = EnumValidator.new("String", ["HEAD", "GET", "POST", "PATCH", "PUT", "DELETE"])

    # he URL we call when the trigger fires
    @[JSON::Field(key: "callback_url", type: String?, presence: true, ignore_serialize: callback_url.nil? && !callback_url_present?)]
    property callback_url : String?

    @[JSON::Field(ignore: true)]
    property? callback_url_present : Bool = false

    # The current value of the field the trigger is watching
    @[JSON::Field(key: "current_value", type: String?, presence: true, ignore_serialize: current_value.nil? && !current_value_present?)]
    property current_value : String?

    @[JSON::Field(ignore: true)]
    property? current_value_present : Bool = false

    # The RFC 2822 date and time in GMT that the resource was created
    @[JSON::Field(key: "date_created", type: Time?, converter: Time::RFC2822Converter, presence: true, ignore_serialize: date_created.nil? && !date_created_present?)]
    property date_created : Time?

    @[JSON::Field(ignore: true)]
    property? date_created_present : Bool = false

    # The RFC 2822 date and time in GMT that the trigger was last fired
    @[JSON::Field(key: "date_fired", type: Time?, converter: Time::RFC2822Converter, presence: true, ignore_serialize: date_fired.nil? && !date_fired_present?)]
    property date_fired : Time?

    @[JSON::Field(ignore: true)]
    property? date_fired_present : Bool = false

    # The RFC 2822 date and time in GMT that the resource was last updated
    @[JSON::Field(key: "date_updated", type: Time?, converter: Time::RFC2822Converter, presence: true, ignore_serialize: date_updated.nil? && !date_updated_present?)]
    property date_updated : Time?

    @[JSON::Field(ignore: true)]
    property? date_updated_present : Bool = false

    # The string that you assigned to describe the trigger
    @[JSON::Field(key: "friendly_name", type: String?, presence: true, ignore_serialize: friendly_name.nil? && !friendly_name_present?)]
    property friendly_name : String?

    @[JSON::Field(ignore: true)]
    property? friendly_name_present : Bool = false

    # The frequency of a recurring UsageTrigger
    @[JSON::Field(key: "recurring", type: String?, presence: true, ignore_serialize: recurring.nil? && !recurring_present?)]
    getter recurring : String?

    @[JSON::Field(ignore: true)]
    property? recurring_present : Bool = false

    ENUM_VALIDATOR_FOR_RECURRING = EnumValidator.new("String", ["daily", "monthly", "yearly", "alltime"])

    # The unique string that identifies the resource
    @[JSON::Field(key: "sid", type: String?, presence: true, ignore_serialize: sid.nil? && !sid_present?)]
    getter sid : String?

    @[JSON::Field(ignore: true)]
    property? sid_present : Bool = false

    # The field in the UsageRecord resource that fires the trigger
    @[JSON::Field(key: "trigger_by", type: String?, presence: true, ignore_serialize: trigger_by.nil? && !trigger_by_present?)]
    getter trigger_by : String?

    @[JSON::Field(ignore: true)]
    property? trigger_by_present : Bool = false

    ENUM_VALIDATOR_FOR_TRIGGER_BY = EnumValidator.new("String", ["count", "usage", "price"])

    # The value at which the trigger will fire
    @[JSON::Field(key: "trigger_value", type: String?, presence: true, ignore_serialize: trigger_value.nil? && !trigger_value_present?)]
    property trigger_value : String?

    @[JSON::Field(ignore: true)]
    property? trigger_value_present : Bool = false

    # The URI of the resource, relative to `https://api.twilio.com`
    @[JSON::Field(key: "uri", type: String?, presence: true, ignore_serialize: uri.nil? && !uri_present?)]
    property uri : String?

    @[JSON::Field(ignore: true)]
    property? uri_present : Bool = false

    # The usage category the trigger watches
    @[JSON::Field(key: "usage_category", type: String?, presence: true, ignore_serialize: usage_category.nil? && !usage_category_present?)]
    getter usage_category : String?

    @[JSON::Field(ignore: true)]
    property? usage_category_present : Bool = false

    ENUM_VALIDATOR_FOR_USAGE_CATEGORY = EnumValidator.new("String", ["a2p-registration-fees", "agent-conference", "answering-machine-detection", "authy-authentications", "authy-calls-outbound", "authy-monthly-fees", "authy-phone-intelligence", "authy-phone-verifications", "authy-sms-outbound", "call-progess-events", "calleridlookups", "calls", "calls-client", "calls-globalconference", "calls-inbound", "calls-inbound-local", "calls-inbound-mobile", "calls-inbound-tollfree", "calls-outbound", "calls-pay-verb-transactions", "calls-recordings", "calls-sip", "calls-sip-inbound", "calls-sip-outbound", "calls-transfers", "carrier-lookups", "conversations", "conversations-api-requests", "conversations-conversation-events", "conversations-endpoint-connectivity", "conversations-events", "conversations-participant-events", "conversations-participants", "cps", "flex-usage", "fraud-lookups", "group-rooms", "group-rooms-data-track", "group-rooms-encrypted-media-recorded", "group-rooms-media-downloaded", "group-rooms-media-recorded", "group-rooms-media-routed", "group-rooms-media-stored", "group-rooms-participant-minutes", "group-rooms-recorded-minutes", "imp-v1-usage", "lookups", "marketplace", "marketplace-algorithmia-named-entity-recognition", "marketplace-cadence-transcription", "marketplace-cadence-translation", "marketplace-capio-speech-to-text", "marketplace-convriza-ababa", "marketplace-deepgram-phrase-detector", "marketplace-digital-segment-business-info", "marketplace-facebook-offline-conversions", "marketplace-google-speech-to-text", "marketplace-ibm-watson-message-insights", "marketplace-ibm-watson-message-sentiment", "marketplace-ibm-watson-recording-analysis", "marketplace-ibm-watson-tone-analyzer", "marketplace-icehook-systems-scout", "marketplace-infogroup-dataaxle-bizinfo", "marketplace-keen-io-contact-center-analytics", "marketplace-marchex-cleancall", "marketplace-marchex-sentiment-analysis-for-sms", "marketplace-marketplace-nextcaller-social-id", "marketplace-mobile-commons-opt-out-classifier", "marketplace-nexiwave-voicemail-to-text", "marketplace-nextcaller-advanced-caller-identification", "marketplace-nomorobo-spam-score", "marketplace-payfone-tcpa-compliance", "marketplace-remeeting-automatic-speech-recognition", "marketplace-tcpa-defense-solutions-blacklist-feed", "marketplace-telo-opencnam", "marketplace-truecnam-true-spam", "marketplace-twilio-caller-name-lookup-us", "marketplace-twilio-carrier-information-lookup", "marketplace-voicebase-pci", "marketplace-voicebase-transcription", "marketplace-voicebase-transcription-custom-vocabulary", "marketplace-whitepages-pro-caller-identification", "marketplace-whitepages-pro-phone-intelligence", "marketplace-whitepages-pro-phone-reputation", "marketplace-wolfarm-spoken-results", "marketplace-wolfram-short-answer", "marketplace-ytica-contact-center-reporting-analytics", "mediastorage", "mms", "mms-inbound", "mms-inbound-longcode", "mms-inbound-shortcode", "mms-messages-carrierfees", "mms-outbound", "mms-outbound-longcode", "mms-outbound-shortcode", "monitor-reads", "monitor-storage", "monitor-writes", "notify", "notify-actions-attempts", "notify-channels", "number-format-lookups", "pchat", "pchat-users", "peer-to-peer-rooms-participant-minutes", "pfax", "pfax-minutes", "pfax-minutes-inbound", "pfax-minutes-outbound", "pfax-pages", "phonenumbers", "phonenumbers-cps", "phonenumbers-emergency", "phonenumbers-local", "phonenumbers-mobile", "phonenumbers-setups", "phonenumbers-tollfree", "premiumsupport", "proxy", "proxy-active-sessions", "pstnconnectivity", "pv", "pv-composition-media-downloaded", "pv-composition-media-encrypted", "pv-composition-media-stored", "pv-composition-minutes", "pv-recording-compositions", "pv-room-participants", "pv-room-participants-au1", "pv-room-participants-br1", "pv-room-participants-ie1", "pv-room-participants-jp1", "pv-room-participants-sg1", "pv-room-participants-us1", "pv-room-participants-us2", "pv-rooms", "pv-sip-endpoint-registrations", "recordings", "recordingstorage", "rooms-group-bandwidth", "rooms-group-minutes", "rooms-peer-to-peer-minutes", "shortcodes", "shortcodes-customerowned", "shortcodes-mms-enablement", "shortcodes-mps", "shortcodes-random", "shortcodes-uk", "shortcodes-vanity", "small-group-rooms", "small-group-rooms-data-track", "small-group-rooms-participant-minutes", "sms", "sms-inbound", "sms-inbound-longcode", "sms-inbound-shortcode", "sms-messages-carrierfees", "sms-messages-features", "sms-messages-features-senderid", "sms-outbound", "sms-outbound-content-inspection", "sms-outbound-longcode", "sms-outbound-shortcode", "speech-recognition", "studio-engagements", "sync", "sync-actions", "sync-endpoint-hours", "sync-endpoint-hours-above-daily-cap", "taskrouter-tasks", "totalprice", "transcriptions", "trunking-cps", "trunking-emergency-calls", "trunking-origination", "trunking-origination-local", "trunking-origination-mobile", "trunking-origination-tollfree", "trunking-recordings", "trunking-secure", "trunking-termination", "turnmegabytes", "turnmegabytes-australia", "turnmegabytes-brasil", "turnmegabytes-germany", "turnmegabytes-india", "turnmegabytes-ireland", "turnmegabytes-japan", "turnmegabytes-singapore", "turnmegabytes-useast", "turnmegabytes-uswest", "twilio-interconnect", "verify-push", "verify-totp", "verify-whatsapp-conversations-business-initiated", "video-recordings", "voice-insights", "voice-insights-client-insights-on-demand-minute", "voice-insights-ptsn-insights-on-demand-minute", "voice-insights-sip-interface-insights-on-demand-minute", "voice-insights-sip-trunking-insights-on-demand-minute", "wireless", "wireless-orders", "wireless-orders-artwork", "wireless-orders-bulk", "wireless-orders-esim", "wireless-orders-starter", "wireless-usage", "wireless-usage-commands", "wireless-usage-commands-africa", "wireless-usage-commands-asia", "wireless-usage-commands-centralandsouthamerica", "wireless-usage-commands-europe", "wireless-usage-commands-home", "wireless-usage-commands-northamerica", "wireless-usage-commands-oceania", "wireless-usage-commands-roaming", "wireless-usage-data", "wireless-usage-data-africa", "wireless-usage-data-asia", "wireless-usage-data-centralandsouthamerica", "wireless-usage-data-custom-additionalmb", "wireless-usage-data-custom-first5mb", "wireless-usage-data-domestic-roaming", "wireless-usage-data-europe", "wireless-usage-data-individual-additionalgb", "wireless-usage-data-individual-firstgb", "wireless-usage-data-international-roaming-canada", "wireless-usage-data-international-roaming-india", "wireless-usage-data-international-roaming-mexico", "wireless-usage-data-northamerica", "wireless-usage-data-oceania", "wireless-usage-data-pooled", "wireless-usage-data-pooled-downlink", "wireless-usage-data-pooled-uplink", "wireless-usage-mrc", "wireless-usage-mrc-custom", "wireless-usage-mrc-individual", "wireless-usage-mrc-pooled", "wireless-usage-mrc-suspended", "wireless-usage-sms", "wireless-usage-voice"])

    # The URI of the UsageRecord resource this trigger watches
    @[JSON::Field(key: "usage_record_uri", type: String?, presence: true, ignore_serialize: usage_record_uri.nil? && !usage_record_uri_present?)]
    property usage_record_uri : String?

    @[JSON::Field(ignore: true)]
    property? usage_record_uri_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(*, @account_sid : String? = nil, @api_version : String? = nil, @callback_method : String? = nil, @callback_url : String? = nil, @current_value : String? = nil, @date_created : Time? = nil, @date_fired : Time? = nil, @date_updated : Time? = nil, @friendly_name : String? = nil, @recurring : String? = nil, @sid : String? = nil, @trigger_by : String? = nil, @trigger_value : String? = nil, @uri : String? = nil, @usage_category : String? = nil, @usage_record_uri : String? = nil)
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

      unless ENUM_VALIDATOR_FOR_CALLBACK_METHOD.valid?(@callback_method)
        invalid_properties.push("invalid value for \"callback_method\", must be one of #{ENUM_VALIDATOR_FOR_CALLBACK_METHOD.allowable_values}.")
      end

      unless ENUM_VALIDATOR_FOR_RECURRING.valid?(@recurring)
        invalid_properties.push("invalid value for \"recurring\", must be one of #{ENUM_VALIDATOR_FOR_RECURRING.allowable_values}.")
      end

      if !@sid.nil? && @sid.to_s.size > 34
        invalid_properties.push("invalid value for \"sid\", the character length must be smaller than or equal to 34.")
      end

      if !@sid.nil? && @sid.to_s.size < 34
        invalid_properties.push("invalid value for \"sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^UT[0-9a-fA-F]{32}$/
      if !@sid.nil? && @sid !~ pattern
        invalid_properties.push("invalid value for \"sid\", must conform to the pattern #{pattern}.")
      end

      unless ENUM_VALIDATOR_FOR_TRIGGER_BY.valid?(@trigger_by)
        invalid_properties.push("invalid value for \"trigger_by\", must be one of #{ENUM_VALIDATOR_FOR_TRIGGER_BY.allowable_values}.")
      end

      unless ENUM_VALIDATOR_FOR_USAGE_CATEGORY.valid?(@usage_category)
        invalid_properties.push("invalid value for \"usage_category\", must be one of #{ENUM_VALIDATOR_FOR_USAGE_CATEGORY.allowable_values}.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@account_sid.nil? && @account_sid.to_s.size > 34
      return false if !@account_sid.nil? && @account_sid.to_s.size < 34
      return false if !@account_sid.nil? && @account_sid !~ /^AC[0-9a-fA-F]{32}$/
      return false unless ENUM_VALIDATOR_FOR_CALLBACK_METHOD.valid?(@callback_method)
      return false unless ENUM_VALIDATOR_FOR_RECURRING.valid?(@recurring)
      return false if !@sid.nil? && @sid.to_s.size > 34
      return false if !@sid.nil? && @sid.to_s.size < 34
      return false if !@sid.nil? && @sid !~ /^UT[0-9a-fA-F]{32}$/
      return false unless ENUM_VALIDATOR_FOR_TRIGGER_BY.valid?(@trigger_by)
      return false unless ENUM_VALIDATOR_FOR_USAGE_CATEGORY.valid?(@usage_category)
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
    # @param [Object] callback_method Object to be assigned
    def callback_method=(callback_method)
      unless ENUM_VALIDATOR_FOR_CALLBACK_METHOD.valid?(callback_method)
        raise ArgumentError.new("invalid value for \"callback_method\", must be one of #{ENUM_VALIDATOR_FOR_CALLBACK_METHOD.allowable_values}.")
      end
      @callback_method = callback_method
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] recurring Object to be assigned
    def recurring=(recurring)
      unless ENUM_VALIDATOR_FOR_RECURRING.valid?(recurring)
        raise ArgumentError.new("invalid value for \"recurring\", must be one of #{ENUM_VALIDATOR_FOR_RECURRING.allowable_values}.")
      end
      @recurring = recurring
    end

    # Custom attribute writer method with validation
    # @param [Object] sid Value to be assigned
    def sid=(sid)
      if !sid.nil? && sid.to_s.size > 34
        raise ArgumentError.new("invalid value for \"sid\", the character length must be smaller than or equal to 34.")
      end

      if !sid.nil? && sid.to_s.size < 34
        raise ArgumentError.new("invalid value for \"sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^UT[0-9a-fA-F]{32}$/
      if !sid.nil? && sid !~ pattern
        raise ArgumentError.new("invalid value for \"sid\", must conform to the pattern #{pattern}.")
      end

      @sid = sid
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] trigger_by Object to be assigned
    def trigger_by=(trigger_by)
      unless ENUM_VALIDATOR_FOR_TRIGGER_BY.valid?(trigger_by)
        raise ArgumentError.new("invalid value for \"trigger_by\", must be one of #{ENUM_VALIDATOR_FOR_TRIGGER_BY.allowable_values}.")
      end
      @trigger_by = trigger_by
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] usage_category Object to be assigned
    def usage_category=(usage_category)
      unless ENUM_VALIDATOR_FOR_USAGE_CATEGORY.valid?(usage_category)
        raise ArgumentError.new("invalid value for \"usage_category\", must be one of #{ENUM_VALIDATOR_FOR_USAGE_CATEGORY.allowable_values}.")
      end
      @usage_category = usage_category
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.same?(o)
      self.class == o.class &&
        account_sid == o.account_sid &&
        api_version == o.api_version &&
        callback_method == o.callback_method &&
        callback_url == o.callback_url &&
        current_value == o.current_value &&
        date_created == o.date_created &&
        date_fired == o.date_fired &&
        date_updated == o.date_updated &&
        friendly_name == o.friendly_name &&
        recurring == o.recurring &&
        sid == o.sid &&
        trigger_by == o.trigger_by &&
        trigger_value == o.trigger_value &&
        uri == o.uri &&
        usage_category == o.usage_category &&
        usage_record_uri == o.usage_record_uri
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [UInt64] Hash code
    def_hash(@account_sid, @api_version, @callback_method, @callback_url, @current_value, @date_created, @date_fired, @date_updated, @friendly_name, @recurring, @sid, @trigger_by, @trigger_value, @uri, @usage_category, @usage_record_uri)
  end
end
