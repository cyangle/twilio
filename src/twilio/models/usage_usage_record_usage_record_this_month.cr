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
  class UsageUsageRecordUsageRecordThisMonth
    include NASON::Serializable

    # Optional properties
    # The SID of the Account accrued the usage
    @[NASON::Field(key: "account_sid", type: String? | Null, nillable: true)]
    property account_sid : String? | Null

    # The API version used to create the resource
    @[NASON::Field(key: "api_version", type: String? | Null, nillable: true)]
    property api_version : String? | Null

    # Usage records up to date as of this timestamp
    @[NASON::Field(key: "as_of", type: String? | Null, nillable: true)]
    property as_of : String? | Null

    # The category of usage
    @[NASON::Field(key: "category", type: String? | Null, nillable: true)]
    property category : String? | Null

    # The number of usage events
    @[NASON::Field(key: "count", type: String? | Null, nillable: true)]
    property count : String? | Null

    # The units in which count is measured
    @[NASON::Field(key: "count_unit", type: String? | Null, nillable: true)]
    property count_unit : String? | Null

    # A plain-language description of the usage category
    @[NASON::Field(key: "description", type: String? | Null, nillable: true)]
    property description : String? | Null

    # The last date for which usage is included in the UsageRecord
    @[NASON::Field(key: "end_date", type: Time? | Null, nillable: true)]
    property end_date : Time? | Null

    # The total price of the usage
    @[NASON::Field(key: "price", type: Float64? | Null, nillable: true)]
    property price : Float64? | Null

    # The currency in which `price` is measured
    @[NASON::Field(key: "price_unit", type: String? | Null, nillable: true)]
    property price_unit : String? | Null

    # The first date for which usage is included in this UsageRecord
    @[NASON::Field(key: "start_date", type: Time? | Null, nillable: true)]
    property start_date : Time? | Null

    @[NASON::Field(key: "subresource_uris", type: SubresourceUris? | Null, nillable: true)]
    property subresource_uris : SubresourceUris? | Null

    # The URI of the resource, relative to `https://api.twilio.com`
    @[NASON::Field(key: "uri", type: String? | Null, nillable: true)]
    property uri : String? | Null

    # The amount of usage
    @[NASON::Field(key: "usage", type: String? | Null, nillable: true)]
    property usage : String? | Null

    # The units in which usage is measured
    @[NASON::Field(key: "usage_unit", type: String? | Null, nillable: true)]
    property usage_unit : String? | Null

    class EnumAttributeValidator
      getter datatype : String
      getter allowable_values : Array(String)

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
        !value || allowable_values.includes?(value)
      end
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(*, @account_sid : String? | Null = nil, @api_version : String? | Null = nil, @as_of : String? | Null = nil, @category : String? | Null = nil, @count : String? | Null = nil, @count_unit : String? | Null = nil, @description : String? | Null = nil, @end_date : Time? | Null = nil, @price : Float64? | Null = nil, @price_unit : String? | Null = nil, @start_date : Time? | Null = nil, @subresource_uris : SubresourceUris? | Null = nil, @uri : String? | Null = nil, @usage : String? | Null = nil, @usage_unit : String? | Null = nil)
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

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@account_sid.nil? && !@account_sid.null? && @account_sid.to_s.size > 34
      return false if !@account_sid.nil? && !@account_sid.null? && @account_sid.to_s.size < 34
      return false if !@account_sid.nil? && !@account_sid.null? && @account_sid !~ /^AC[0-9a-fA-F]{32}$/
      category_validator = EnumAttributeValidator.new("String", ["agent-conference", "answering-machine-detection", "authy-authentications", "authy-calls-outbound", "authy-monthly-fees", "authy-phone-intelligence", "authy-phone-verifications", "authy-sms-outbound", "call-progess-events", "calleridlookups", "calls", "calls-client", "calls-globalconference", "calls-inbound", "calls-inbound-local", "calls-inbound-mobile", "calls-inbound-tollfree", "calls-outbound", "calls-pay-verb-transactions", "calls-recordings", "calls-sip", "calls-sip-inbound", "calls-sip-outbound", "calls-transfers", "carrier-lookups", "conversations", "conversations-api-requests", "conversations-conversation-events", "conversations-endpoint-connectivity", "conversations-events", "conversations-participant-events", "conversations-participants", "cps", "flex-usage", "fraud-lookups", "group-rooms", "group-rooms-data-track", "group-rooms-encrypted-media-recorded", "group-rooms-media-downloaded", "group-rooms-media-recorded", "group-rooms-media-routed", "group-rooms-media-stored", "group-rooms-participant-minutes", "group-rooms-recorded-minutes", "imp-v1-usage", "lookups", "marketplace", "marketplace-algorithmia-named-entity-recognition", "marketplace-cadence-transcription", "marketplace-cadence-translation", "marketplace-capio-speech-to-text", "marketplace-convriza-ababa", "marketplace-deepgram-phrase-detector", "marketplace-digital-segment-business-info", "marketplace-facebook-offline-conversions", "marketplace-google-speech-to-text", "marketplace-ibm-watson-message-insights", "marketplace-ibm-watson-message-sentiment", "marketplace-ibm-watson-recording-analysis", "marketplace-ibm-watson-tone-analyzer", "marketplace-icehook-systems-scout", "marketplace-infogroup-dataaxle-bizinfo", "marketplace-keen-io-contact-center-analytics", "marketplace-marchex-cleancall", "marketplace-marchex-sentiment-analysis-for-sms", "marketplace-marketplace-nextcaller-social-id", "marketplace-mobile-commons-opt-out-classifier", "marketplace-nexiwave-voicemail-to-text", "marketplace-nextcaller-advanced-caller-identification", "marketplace-nomorobo-spam-score", "marketplace-payfone-tcpa-compliance", "marketplace-remeeting-automatic-speech-recognition", "marketplace-tcpa-defense-solutions-blacklist-feed", "marketplace-telo-opencnam", "marketplace-truecnam-true-spam", "marketplace-twilio-caller-name-lookup-us", "marketplace-twilio-carrier-information-lookup", "marketplace-voicebase-pci", "marketplace-voicebase-transcription", "marketplace-voicebase-transcription-custom-vocabulary", "marketplace-whitepages-pro-caller-identification", "marketplace-whitepages-pro-phone-intelligence", "marketplace-whitepages-pro-phone-reputation", "marketplace-wolfarm-spoken-results", "marketplace-wolfram-short-answer", "marketplace-ytica-contact-center-reporting-analytics", "mediastorage", "mms", "mms-inbound", "mms-inbound-longcode", "mms-inbound-shortcode", "mms-messages-carrierfees", "mms-outbound", "mms-outbound-longcode", "mms-outbound-shortcode", "monitor-reads", "monitor-storage", "monitor-writes", "notify", "notify-actions-attempts", "notify-channels", "number-format-lookups", "pchat", "pchat-users", "peer-to-peer-rooms-participant-minutes", "pfax", "pfax-minutes", "pfax-minutes-inbound", "pfax-minutes-outbound", "pfax-pages", "phonenumbers", "phonenumbers-cps", "phonenumbers-emergency", "phonenumbers-local", "phonenumbers-mobile", "phonenumbers-setups", "phonenumbers-tollfree", "premiumsupport", "proxy", "proxy-active-sessions", "pstnconnectivity", "pv", "pv-composition-media-downloaded", "pv-composition-media-encrypted", "pv-composition-media-stored", "pv-composition-minutes", "pv-recording-compositions", "pv-room-participants", "pv-room-participants-au1", "pv-room-participants-br1", "pv-room-participants-ie1", "pv-room-participants-jp1", "pv-room-participants-sg1", "pv-room-participants-us1", "pv-room-participants-us2", "pv-rooms", "pv-sip-endpoint-registrations", "recordings", "recordingstorage", "rooms-group-bandwidth", "rooms-group-minutes", "rooms-peer-to-peer-minutes", "shortcodes", "shortcodes-customerowned", "shortcodes-mms-enablement", "shortcodes-mps", "shortcodes-random", "shortcodes-uk", "shortcodes-vanity", "small-group-rooms", "small-group-rooms-data-track", "small-group-rooms-participant-minutes", "sms", "sms-inbound", "sms-inbound-longcode", "sms-inbound-shortcode", "sms-messages-carrierfees", "sms-messages-features", "sms-messages-features-senderid", "sms-outbound", "sms-outbound-content-inspection", "sms-outbound-longcode", "sms-outbound-shortcode", "speech-recognition", "studio-engagements", "sync", "sync-actions", "sync-endpoint-hours", "sync-endpoint-hours-above-daily-cap", "taskrouter-tasks", "totalprice", "transcriptions", "trunking-cps", "trunking-emergency-calls", "trunking-origination", "trunking-origination-local", "trunking-origination-mobile", "trunking-origination-tollfree", "trunking-recordings", "trunking-secure", "trunking-termination", "turnmegabytes", "turnmegabytes-australia", "turnmegabytes-brasil", "turnmegabytes-germany", "turnmegabytes-india", "turnmegabytes-ireland", "turnmegabytes-japan", "turnmegabytes-singapore", "turnmegabytes-useast", "turnmegabytes-uswest", "twilio-interconnect", "verify-push", "video-recordings", "voice-insights", "voice-insights-client-insights-on-demand-minute", "voice-insights-ptsn-insights-on-demand-minute", "voice-insights-sip-interface-insights-on-demand-minute", "voice-insights-sip-trunking-insights-on-demand-minute", "wireless", "wireless-orders", "wireless-orders-artwork", "wireless-orders-bulk", "wireless-orders-esim", "wireless-orders-starter", "wireless-usage", "wireless-usage-commands", "wireless-usage-commands-africa", "wireless-usage-commands-asia", "wireless-usage-commands-centralandsouthamerica", "wireless-usage-commands-europe", "wireless-usage-commands-home", "wireless-usage-commands-northamerica", "wireless-usage-commands-oceania", "wireless-usage-commands-roaming", "wireless-usage-data", "wireless-usage-data-africa", "wireless-usage-data-asia", "wireless-usage-data-centralandsouthamerica", "wireless-usage-data-custom-additionalmb", "wireless-usage-data-custom-first5mb", "wireless-usage-data-domestic-roaming", "wireless-usage-data-europe", "wireless-usage-data-individual-additionalgb", "wireless-usage-data-individual-firstgb", "wireless-usage-data-international-roaming-canada", "wireless-usage-data-international-roaming-india", "wireless-usage-data-international-roaming-mexico", "wireless-usage-data-northamerica", "wireless-usage-data-oceania", "wireless-usage-data-pooled", "wireless-usage-data-pooled-downlink", "wireless-usage-data-pooled-uplink", "wireless-usage-mrc", "wireless-usage-mrc-custom", "wireless-usage-mrc-individual", "wireless-usage-mrc-pooled", "wireless-usage-mrc-suspended", "wireless-usage-sms", "wireless-usage-voice"])
      return false unless category_validator.valid?(@category)
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

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] category Object to be assigned
    def category=(category)
      validator = EnumAttributeValidator.new("String", ["agent-conference", "answering-machine-detection", "authy-authentications", "authy-calls-outbound", "authy-monthly-fees", "authy-phone-intelligence", "authy-phone-verifications", "authy-sms-outbound", "call-progess-events", "calleridlookups", "calls", "calls-client", "calls-globalconference", "calls-inbound", "calls-inbound-local", "calls-inbound-mobile", "calls-inbound-tollfree", "calls-outbound", "calls-pay-verb-transactions", "calls-recordings", "calls-sip", "calls-sip-inbound", "calls-sip-outbound", "calls-transfers", "carrier-lookups", "conversations", "conversations-api-requests", "conversations-conversation-events", "conversations-endpoint-connectivity", "conversations-events", "conversations-participant-events", "conversations-participants", "cps", "flex-usage", "fraud-lookups", "group-rooms", "group-rooms-data-track", "group-rooms-encrypted-media-recorded", "group-rooms-media-downloaded", "group-rooms-media-recorded", "group-rooms-media-routed", "group-rooms-media-stored", "group-rooms-participant-minutes", "group-rooms-recorded-minutes", "imp-v1-usage", "lookups", "marketplace", "marketplace-algorithmia-named-entity-recognition", "marketplace-cadence-transcription", "marketplace-cadence-translation", "marketplace-capio-speech-to-text", "marketplace-convriza-ababa", "marketplace-deepgram-phrase-detector", "marketplace-digital-segment-business-info", "marketplace-facebook-offline-conversions", "marketplace-google-speech-to-text", "marketplace-ibm-watson-message-insights", "marketplace-ibm-watson-message-sentiment", "marketplace-ibm-watson-recording-analysis", "marketplace-ibm-watson-tone-analyzer", "marketplace-icehook-systems-scout", "marketplace-infogroup-dataaxle-bizinfo", "marketplace-keen-io-contact-center-analytics", "marketplace-marchex-cleancall", "marketplace-marchex-sentiment-analysis-for-sms", "marketplace-marketplace-nextcaller-social-id", "marketplace-mobile-commons-opt-out-classifier", "marketplace-nexiwave-voicemail-to-text", "marketplace-nextcaller-advanced-caller-identification", "marketplace-nomorobo-spam-score", "marketplace-payfone-tcpa-compliance", "marketplace-remeeting-automatic-speech-recognition", "marketplace-tcpa-defense-solutions-blacklist-feed", "marketplace-telo-opencnam", "marketplace-truecnam-true-spam", "marketplace-twilio-caller-name-lookup-us", "marketplace-twilio-carrier-information-lookup", "marketplace-voicebase-pci", "marketplace-voicebase-transcription", "marketplace-voicebase-transcription-custom-vocabulary", "marketplace-whitepages-pro-caller-identification", "marketplace-whitepages-pro-phone-intelligence", "marketplace-whitepages-pro-phone-reputation", "marketplace-wolfarm-spoken-results", "marketplace-wolfram-short-answer", "marketplace-ytica-contact-center-reporting-analytics", "mediastorage", "mms", "mms-inbound", "mms-inbound-longcode", "mms-inbound-shortcode", "mms-messages-carrierfees", "mms-outbound", "mms-outbound-longcode", "mms-outbound-shortcode", "monitor-reads", "monitor-storage", "monitor-writes", "notify", "notify-actions-attempts", "notify-channels", "number-format-lookups", "pchat", "pchat-users", "peer-to-peer-rooms-participant-minutes", "pfax", "pfax-minutes", "pfax-minutes-inbound", "pfax-minutes-outbound", "pfax-pages", "phonenumbers", "phonenumbers-cps", "phonenumbers-emergency", "phonenumbers-local", "phonenumbers-mobile", "phonenumbers-setups", "phonenumbers-tollfree", "premiumsupport", "proxy", "proxy-active-sessions", "pstnconnectivity", "pv", "pv-composition-media-downloaded", "pv-composition-media-encrypted", "pv-composition-media-stored", "pv-composition-minutes", "pv-recording-compositions", "pv-room-participants", "pv-room-participants-au1", "pv-room-participants-br1", "pv-room-participants-ie1", "pv-room-participants-jp1", "pv-room-participants-sg1", "pv-room-participants-us1", "pv-room-participants-us2", "pv-rooms", "pv-sip-endpoint-registrations", "recordings", "recordingstorage", "rooms-group-bandwidth", "rooms-group-minutes", "rooms-peer-to-peer-minutes", "shortcodes", "shortcodes-customerowned", "shortcodes-mms-enablement", "shortcodes-mps", "shortcodes-random", "shortcodes-uk", "shortcodes-vanity", "small-group-rooms", "small-group-rooms-data-track", "small-group-rooms-participant-minutes", "sms", "sms-inbound", "sms-inbound-longcode", "sms-inbound-shortcode", "sms-messages-carrierfees", "sms-messages-features", "sms-messages-features-senderid", "sms-outbound", "sms-outbound-content-inspection", "sms-outbound-longcode", "sms-outbound-shortcode", "speech-recognition", "studio-engagements", "sync", "sync-actions", "sync-endpoint-hours", "sync-endpoint-hours-above-daily-cap", "taskrouter-tasks", "totalprice", "transcriptions", "trunking-cps", "trunking-emergency-calls", "trunking-origination", "trunking-origination-local", "trunking-origination-mobile", "trunking-origination-tollfree", "trunking-recordings", "trunking-secure", "trunking-termination", "turnmegabytes", "turnmegabytes-australia", "turnmegabytes-brasil", "turnmegabytes-germany", "turnmegabytes-india", "turnmegabytes-ireland", "turnmegabytes-japan", "turnmegabytes-singapore", "turnmegabytes-useast", "turnmegabytes-uswest", "twilio-interconnect", "verify-push", "video-recordings", "voice-insights", "voice-insights-client-insights-on-demand-minute", "voice-insights-ptsn-insights-on-demand-minute", "voice-insights-sip-interface-insights-on-demand-minute", "voice-insights-sip-trunking-insights-on-demand-minute", "wireless", "wireless-orders", "wireless-orders-artwork", "wireless-orders-bulk", "wireless-orders-esim", "wireless-orders-starter", "wireless-usage", "wireless-usage-commands", "wireless-usage-commands-africa", "wireless-usage-commands-asia", "wireless-usage-commands-centralandsouthamerica", "wireless-usage-commands-europe", "wireless-usage-commands-home", "wireless-usage-commands-northamerica", "wireless-usage-commands-oceania", "wireless-usage-commands-roaming", "wireless-usage-data", "wireless-usage-data-africa", "wireless-usage-data-asia", "wireless-usage-data-centralandsouthamerica", "wireless-usage-data-custom-additionalmb", "wireless-usage-data-custom-first5mb", "wireless-usage-data-domestic-roaming", "wireless-usage-data-europe", "wireless-usage-data-individual-additionalgb", "wireless-usage-data-individual-firstgb", "wireless-usage-data-international-roaming-canada", "wireless-usage-data-international-roaming-india", "wireless-usage-data-international-roaming-mexico", "wireless-usage-data-northamerica", "wireless-usage-data-oceania", "wireless-usage-data-pooled", "wireless-usage-data-pooled-downlink", "wireless-usage-data-pooled-uplink", "wireless-usage-mrc", "wireless-usage-mrc-custom", "wireless-usage-mrc-individual", "wireless-usage-mrc-pooled", "wireless-usage-mrc-suspended", "wireless-usage-sms", "wireless-usage-voice"])
      unless validator.valid?(category)
        raise ArgumentError.new("invalid value for \"category\", must be one of #{validator.allowable_values}.")
      end
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
    # @return [Integer] Hash code
    def hash
      [account_sid, api_version, as_of, category, count, count_unit, description, end_date, price, price_unit, start_date, subresource_uris, uri, usage, usage_unit].hash
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
