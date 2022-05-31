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
  class CallCallFeedbackSummary
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties
    # The unique sid that identifies this account
    @[JSON::Field(key: "account_sid", type: String?, presence: true, ignore_serialize: account_sid.nil? && !account_sid_present?)]
    property account_sid : String?

    @[JSON::Field(ignore: true)]
    property? account_sid_present : Bool = false

    # The total number of calls
    @[JSON::Field(key: "call_count", type: Int32?, presence: true, ignore_serialize: call_count.nil? && !call_count_present?)]
    property call_count : Int32?

    @[JSON::Field(ignore: true)]
    property? call_count_present : Bool = false

    # The total number of calls with a feedback entry
    @[JSON::Field(key: "call_feedback_count", type: Int32?, presence: true, ignore_serialize: call_feedback_count.nil? && !call_feedback_count_present?)]
    property call_feedback_count : Int32?

    @[JSON::Field(ignore: true)]
    property? call_feedback_count_present : Bool = false

    # The date this resource was created
    @[JSON::Field(key: "date_created", type: Time?, converter: Time::RFC2822Converter, presence: true, ignore_serialize: date_created.nil? && !date_created_present?)]
    property date_created : Time?

    @[JSON::Field(ignore: true)]
    property? date_created_present : Bool = false

    # The date this resource was last updated
    @[JSON::Field(key: "date_updated", type: Time?, converter: Time::RFC2822Converter, presence: true, ignore_serialize: date_updated.nil? && !date_updated_present?)]
    property date_updated : Time?

    @[JSON::Field(ignore: true)]
    property? date_updated_present : Bool = false

    # The latest feedback entry date in the summary
    @[JSON::Field(key: "end_date", type: Time?, converter: Time::ISO8601DateConverter, presence: true, ignore_serialize: end_date.nil? && !end_date_present?)]
    property end_date : Time?

    @[JSON::Field(ignore: true)]
    property? end_date_present : Bool = false

    # Whether the feedback summary includes subaccounts
    @[JSON::Field(key: "include_subaccounts", type: Bool?, presence: true, ignore_serialize: include_subaccounts.nil? && !include_subaccounts_present?)]
    property include_subaccounts : Bool?

    @[JSON::Field(ignore: true)]
    property? include_subaccounts_present : Bool = false

    # Issues experienced during the call
    @[JSON::Field(key: "issues", type: Array(String)?, presence: true, ignore_serialize: issues.nil? && !issues_present?)]
    property issues : Array(String)?

    @[JSON::Field(ignore: true)]
    property? issues_present : Bool = false

    # The average QualityScore of the feedback entries
    @[JSON::Field(key: "quality_score_average", type: Float64?, presence: true, ignore_serialize: quality_score_average.nil? && !quality_score_average_present?)]
    property quality_score_average : Float64?

    @[JSON::Field(ignore: true)]
    property? quality_score_average_present : Bool = false

    # The median QualityScore of the feedback entries
    @[JSON::Field(key: "quality_score_median", type: Float64?, presence: true, ignore_serialize: quality_score_median.nil? && !quality_score_median_present?)]
    property quality_score_median : Float64?

    @[JSON::Field(ignore: true)]
    property? quality_score_median_present : Bool = false

    # The standard deviation of the quality scores
    @[JSON::Field(key: "quality_score_standard_deviation", type: Float64?, presence: true, ignore_serialize: quality_score_standard_deviation.nil? && !quality_score_standard_deviation_present?)]
    property quality_score_standard_deviation : Float64?

    @[JSON::Field(ignore: true)]
    property? quality_score_standard_deviation_present : Bool = false

    # A string that uniquely identifies this feedback entry
    @[JSON::Field(key: "sid", type: String?, presence: true, ignore_serialize: sid.nil? && !sid_present?)]
    property sid : String?

    @[JSON::Field(ignore: true)]
    property? sid_present : Bool = false

    # The earliest feedback entry date in the summary
    @[JSON::Field(key: "start_date", type: Time?, converter: Time::ISO8601DateConverter, presence: true, ignore_serialize: start_date.nil? && !start_date_present?)]
    property start_date : Time?

    @[JSON::Field(ignore: true)]
    property? start_date_present : Bool = false

    # The status of the feedback summary
    @[JSON::Field(key: "status", type: String?, presence: true, ignore_serialize: status.nil? && !status_present?)]
    property status : String?

    @[JSON::Field(ignore: true)]
    property? status_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(*, @account_sid : String? = nil, @call_count : Int32? = nil, @call_feedback_count : Int32? = nil, @date_created : Time? = nil, @date_updated : Time? = nil, @end_date : Time? = nil, @include_subaccounts : Bool? = nil, @issues : Array(String)? = nil, @quality_score_average : Float64? = nil, @quality_score_median : Float64? = nil, @quality_score_standard_deviation : Float64? = nil, @sid : String? = nil, @start_date : Time? = nil, @status : String? = nil)
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

      if !@sid.nil? && @sid.to_s.size > 34
        invalid_properties.push("invalid value for \"sid\", the character length must be smaller than or equal to 34.")
      end

      if !@sid.nil? && @sid.to_s.size < 34
        invalid_properties.push("invalid value for \"sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^FS[0-9a-fA-F]{32}$/
      if !@sid.nil? && @sid !~ pattern
        invalid_properties.push("invalid value for \"sid\", must conform to the pattern #{pattern}.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@account_sid.nil? && @account_sid.to_s.size > 34
      return false if !@account_sid.nil? && @account_sid.to_s.size < 34
      return false if !@account_sid.nil? && @account_sid !~ /^AC[0-9a-fA-F]{32}$/
      return false if !@sid.nil? && @sid.to_s.size > 34
      return false if !@sid.nil? && @sid.to_s.size < 34
      return false if !@sid.nil? && @sid !~ /^FS[0-9a-fA-F]{32}$/
      status_validator = EnumValidator.new("String", ["queued", "in-progress", "completed", "failed"])
      return false unless status_validator.valid?(@status)
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

    # Custom attribute writer method with validation
    # @param [Object] sid Value to be assigned
    def sid=(sid)
      if !sid.nil? && sid.to_s.size > 34
        raise ArgumentError.new("invalid value for \"sid\", the character length must be smaller than or equal to 34.")
      end

      if !sid.nil? && sid.to_s.size < 34
        raise ArgumentError.new("invalid value for \"sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^FS[0-9a-fA-F]{32}$/
      if !sid.nil? && sid !~ pattern
        raise ArgumentError.new("invalid value for \"sid\", must conform to the pattern #{pattern}.")
      end

      @sid = sid
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumValidator.new("String", ["queued", "in-progress", "completed", "failed"])
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
        call_count == o.call_count &&
        call_feedback_count == o.call_feedback_count &&
        date_created == o.date_created &&
        date_updated == o.date_updated &&
        end_date == o.end_date &&
        include_subaccounts == o.include_subaccounts &&
        issues == o.issues &&
        quality_score_average == o.quality_score_average &&
        quality_score_median == o.quality_score_median &&
        quality_score_standard_deviation == o.quality_score_standard_deviation &&
        sid == o.sid &&
        start_date == o.start_date &&
        status == o.status
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [account_sid, call_count, call_feedback_count, date_created, date_updated, end_date, include_subaccounts, issues, quality_score_average, quality_score_median, quality_score_standard_deviation, sid, start_date, status].hash
    end
  end
end
