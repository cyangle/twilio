#  Twilio - Api
#
# This is the public Twilio REST API.
#
# The version of the OpenAPI document: 1.23.1
# Contact: support@twilio.com
# Generated by: https://openapi-generator.tech
# OpenAPI Generator version: 5.2.1
#

require "../spec_helper"

# Unit tests for Twilio::UsageUsageRecordUsageRecordMonthly
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Twilio::UsageUsageRecordUsageRecordMonthly do
  describe "test an instance of UsageUsageRecordUsageRecordMonthly" do
    it "should create an instance of UsageUsageRecordUsageRecordMonthly" do
      # instance = Twilio::UsageUsageRecordUsageRecordMonthly.new
      # expect(instance).to be_instance_of(Twilio::UsageUsageRecordUsageRecordMonthly)
    end
  end

  describe "test attribute 'account_sid'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'api_version'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'as_of'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'category'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Petstore::EnumTest::EnumAttributeValidator.new("String", ["agent-conference", "answering-machine-detection", "authy-authentications", "authy-calls-outbound", "authy-monthly-fees", "authy-phone-intelligence", "authy-phone-verifications", "authy-sms-outbound", "call-progess-events", "calleridlookups", "calls", "calls-client", "calls-globalconference", "calls-inbound", "calls-inbound-local", "calls-inbound-mobile", "calls-inbound-tollfree", "calls-outbound", "calls-pay-verb-transactions", "calls-recordings", "calls-sip", "calls-sip-inbound", "calls-sip-outbound", "calls-transfers", "carrier-lookups", "conversations", "conversations-api-requests", "conversations-conversation-events", "conversations-endpoint-connectivity", "conversations-events", "conversations-participant-events", "conversations-participants", "cps", "flex-usage", "fraud-lookups", "group-rooms", "group-rooms-data-track", "group-rooms-encrypted-media-recorded", "group-rooms-media-downloaded", "group-rooms-media-recorded", "group-rooms-media-routed", "group-rooms-media-stored", "group-rooms-participant-minutes", "group-rooms-recorded-minutes", "imp-v1-usage", "lookups", "marketplace", "marketplace-algorithmia-named-entity-recognition", "marketplace-cadence-transcription", "marketplace-cadence-translation", "marketplace-capio-speech-to-text", "marketplace-convriza-ababa", "marketplace-deepgram-phrase-detector", "marketplace-digital-segment-business-info", "marketplace-facebook-offline-conversions", "marketplace-google-speech-to-text", "marketplace-ibm-watson-message-insights", "marketplace-ibm-watson-message-sentiment", "marketplace-ibm-watson-recording-analysis", "marketplace-ibm-watson-tone-analyzer", "marketplace-icehook-systems-scout", "marketplace-infogroup-dataaxle-bizinfo", "marketplace-keen-io-contact-center-analytics", "marketplace-marchex-cleancall", "marketplace-marchex-sentiment-analysis-for-sms", "marketplace-marketplace-nextcaller-social-id", "marketplace-mobile-commons-opt-out-classifier", "marketplace-nexiwave-voicemail-to-text", "marketplace-nextcaller-advanced-caller-identification", "marketplace-nomorobo-spam-score", "marketplace-payfone-tcpa-compliance", "marketplace-remeeting-automatic-speech-recognition", "marketplace-tcpa-defense-solutions-blacklist-feed", "marketplace-telo-opencnam", "marketplace-truecnam-true-spam", "marketplace-twilio-caller-name-lookup-us", "marketplace-twilio-carrier-information-lookup", "marketplace-voicebase-pci", "marketplace-voicebase-transcription", "marketplace-voicebase-transcription-custom-vocabulary", "marketplace-whitepages-pro-caller-identification", "marketplace-whitepages-pro-phone-intelligence", "marketplace-whitepages-pro-phone-reputation", "marketplace-wolfarm-spoken-results", "marketplace-wolfram-short-answer", "marketplace-ytica-contact-center-reporting-analytics", "mediastorage", "mms", "mms-inbound", "mms-inbound-longcode", "mms-inbound-shortcode", "mms-messages-carrierfees", "mms-outbound", "mms-outbound-longcode", "mms-outbound-shortcode", "monitor-reads", "monitor-storage", "monitor-writes", "notify", "notify-actions-attempts", "notify-channels", "number-format-lookups", "pchat", "pchat-users", "peer-to-peer-rooms-participant-minutes", "pfax", "pfax-minutes", "pfax-minutes-inbound", "pfax-minutes-outbound", "pfax-pages", "phonenumbers", "phonenumbers-cps", "phonenumbers-emergency", "phonenumbers-local", "phonenumbers-mobile", "phonenumbers-setups", "phonenumbers-tollfree", "premiumsupport", "proxy", "proxy-active-sessions", "pstnconnectivity", "pv", "pv-composition-media-downloaded", "pv-composition-media-encrypted", "pv-composition-media-stored", "pv-composition-minutes", "pv-recording-compositions", "pv-room-participants", "pv-room-participants-au1", "pv-room-participants-br1", "pv-room-participants-ie1", "pv-room-participants-jp1", "pv-room-participants-sg1", "pv-room-participants-us1", "pv-room-participants-us2", "pv-rooms", "pv-sip-endpoint-registrations", "recordings", "recordingstorage", "rooms-group-bandwidth", "rooms-group-minutes", "rooms-peer-to-peer-minutes", "shortcodes", "shortcodes-customerowned", "shortcodes-mms-enablement", "shortcodes-mps", "shortcodes-random", "shortcodes-uk", "shortcodes-vanity", "small-group-rooms", "small-group-rooms-data-track", "small-group-rooms-participant-minutes", "sms", "sms-inbound", "sms-inbound-longcode", "sms-inbound-shortcode", "sms-messages-carrierfees", "sms-messages-features", "sms-messages-features-senderid", "sms-outbound", "sms-outbound-content-inspection", "sms-outbound-longcode", "sms-outbound-shortcode", "speech-recognition", "studio-engagements", "sync", "sync-actions", "sync-endpoint-hours", "sync-endpoint-hours-above-daily-cap", "taskrouter-tasks", "totalprice", "transcriptions", "trunking-cps", "trunking-emergency-calls", "trunking-origination", "trunking-origination-local", "trunking-origination-mobile", "trunking-origination-tollfree", "trunking-recordings", "trunking-secure", "trunking-termination", "turnmegabytes", "turnmegabytes-australia", "turnmegabytes-brasil", "turnmegabytes-germany", "turnmegabytes-india", "turnmegabytes-ireland", "turnmegabytes-japan", "turnmegabytes-singapore", "turnmegabytes-useast", "turnmegabytes-uswest", "twilio-interconnect", "verify-push", "video-recordings", "voice-insights", "voice-insights-client-insights-on-demand-minute", "voice-insights-ptsn-insights-on-demand-minute", "voice-insights-sip-interface-insights-on-demand-minute", "voice-insights-sip-trunking-insights-on-demand-minute", "wireless", "wireless-orders", "wireless-orders-artwork", "wireless-orders-bulk", "wireless-orders-esim", "wireless-orders-starter", "wireless-usage", "wireless-usage-commands", "wireless-usage-commands-africa", "wireless-usage-commands-asia", "wireless-usage-commands-centralandsouthamerica", "wireless-usage-commands-europe", "wireless-usage-commands-home", "wireless-usage-commands-northamerica", "wireless-usage-commands-oceania", "wireless-usage-commands-roaming", "wireless-usage-data", "wireless-usage-data-africa", "wireless-usage-data-asia", "wireless-usage-data-centralandsouthamerica", "wireless-usage-data-custom-additionalmb", "wireless-usage-data-custom-first5mb", "wireless-usage-data-domestic-roaming", "wireless-usage-data-europe", "wireless-usage-data-individual-additionalgb", "wireless-usage-data-individual-firstgb", "wireless-usage-data-international-roaming-canada", "wireless-usage-data-international-roaming-india", "wireless-usage-data-international-roaming-mexico", "wireless-usage-data-northamerica", "wireless-usage-data-oceania", "wireless-usage-data-pooled", "wireless-usage-data-pooled-downlink", "wireless-usage-data-pooled-uplink", "wireless-usage-mrc", "wireless-usage-mrc-custom", "wireless-usage-mrc-individual", "wireless-usage-mrc-pooled", "wireless-usage-mrc-suspended", "wireless-usage-sms", "wireless-usage-voice"])
      # validator.allowable_values.each do |value|
      #   expect { instance.category = value }.not_to raise_error
      # end
    end
  end

  describe "test attribute 'count'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'count_unit'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'description'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'end_date'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'price'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'price_unit'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'start_date'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'subresource_uris'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'uri'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'usage'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'usage_unit'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end
end
