#  Twilio - Api
#
# This is the public Twilio REST API.
#
# The version of the OpenAPI document: 1.38.0
# Contact: support@twilio.com
# Generated by: https://openapi-generator.tech
#

require "../spec_helper"
require "../../src/twilio/api/usage_api"

# Unit tests for Twilio::UsageApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe "UsageApi" do
  describe "test an instance of UsageApi" do
    it "should create an instance of UsageApi" do
      api_instance = Twilio::UsageApi.new
      api_instance.should be_a(Twilio::UsageApi)
    end
  end

  # unit tests for create_usage_trigger
  # Create a new UsageTrigger
  # @param account_sid The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that will create the resource.
  # @param callback_url The URL we should call using &#x60;callback_method&#x60; when the trigger fires.
  # @param trigger_value The usage value at which the trigger should fire.  For convenience, you can use an offset value such as &#x60;+30&#x60; to specify a trigger_value that is 30 units more than the current usage value. Be sure to urlencode a &#x60;+&#x60; as &#x60;%2B&#x60;.
  # @param usage_category
  # @param [Hash] opts the optional parameters
  # @option opts [HttpMethod] :callback_method
  # @option opts [String] :friendly_name A descriptive string that you create to describe the resource. It can be up to 64 characters long.
  # @option opts [UsageTriggerEnumRecurring] :recurring
  # @option opts [UsageTriggerEnumTriggerField] :trigger_by
  # @return [UsageUsageTrigger]
  describe "create_usage_trigger test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for delete_usage_trigger
  #
  # @param account_sid The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the UsageTrigger resources to delete.
  # @param sid The Twilio-provided string that uniquely identifies the UsageTrigger resource to delete.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe "delete_usage_trigger test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for fetch_usage_trigger
  # Fetch and instance of a usage-trigger
  # @param account_sid The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the UsageTrigger resource to fetch.
  # @param sid The Twilio-provided string that uniquely identifies the UsageTrigger resource to fetch.
  # @param [Hash] opts the optional parameters
  # @return [UsageUsageTrigger]
  describe "fetch_usage_trigger test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for list_usage_record
  # Retrieve a list of usage-records belonging to the account used to make the request
  # @param account_sid The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the UsageRecord resources to read.
  # @param [Hash] opts the optional parameters
  # @option opts [UsageRecordEnumCategory] :category The [usage category](https://www.twilio.com/docs/usage/api/usage-record#usage-categories) of the UsageRecord resources to read. Only UsageRecord resources in the specified category are retrieved.
  # @option opts [Time] :start_date Only include usage that has occurred on or after this date. Specify the date in GMT and format as &#x60;YYYY-MM-DD&#x60;. You can also specify offsets from the current date, such as: &#x60;-30days&#x60;, which will set the start date to be 30 days before the current date.
  # @option opts [Time] :end_date Only include usage that occurred on or before this date. Specify the date in GMT and format as &#x60;YYYY-MM-DD&#x60;.  You can also specify offsets from the current date, such as: &#x60;+30days&#x60;, which will set the end date to 30 days from the current date.
  # @option opts [Bool] :include_subaccounts Whether to include usage from the master account and all its subaccounts. Can be: &#x60;true&#x60; (the default) to include usage from the master account and all subaccounts or &#x60;false&#x60; to retrieve usage from only the specified account.
  # @option opts [Int32] :page_size How many resources to return in each list page. The default is 50, and the maximum is 1000.
  # @return [ListUsageRecordResponse]
  describe "list_usage_record test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for list_usage_record_all_time
  #
  # @param account_sid The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the UsageRecord resources to read.
  # @param [Hash] opts the optional parameters
  # @option opts [UsageRecordEnumCategory] :category The [usage category](https://www.twilio.com/docs/usage/api/usage-record#usage-categories) of the UsageRecord resources to read. Only UsageRecord resources in the specified category are retrieved.
  # @option opts [Time] :start_date Only include usage that has occurred on or after this date. Specify the date in GMT and format as &#x60;YYYY-MM-DD&#x60;. You can also specify offsets from the current date, such as: &#x60;-30days&#x60;, which will set the start date to be 30 days before the current date.
  # @option opts [Time] :end_date Only include usage that occurred on or before this date. Specify the date in GMT and format as &#x60;YYYY-MM-DD&#x60;.  You can also specify offsets from the current date, such as: &#x60;+30days&#x60;, which will set the end date to 30 days from the current date.
  # @option opts [Bool] :include_subaccounts Whether to include usage from the master account and all its subaccounts. Can be: &#x60;true&#x60; (the default) to include usage from the master account and all subaccounts or &#x60;false&#x60; to retrieve usage from only the specified account.
  # @option opts [Int32] :page_size How many resources to return in each list page. The default is 50, and the maximum is 1000.
  # @return [ListUsageRecordAllTimeResponse]
  describe "list_usage_record_all_time test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for list_usage_record_daily
  #
  # @param account_sid The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the UsageRecord resources to read.
  # @param [Hash] opts the optional parameters
  # @option opts [UsageRecordEnumCategory] :category The [usage category](https://www.twilio.com/docs/usage/api/usage-record#usage-categories) of the UsageRecord resources to read. Only UsageRecord resources in the specified category are retrieved.
  # @option opts [Time] :start_date Only include usage that has occurred on or after this date. Specify the date in GMT and format as &#x60;YYYY-MM-DD&#x60;. You can also specify offsets from the current date, such as: &#x60;-30days&#x60;, which will set the start date to be 30 days before the current date.
  # @option opts [Time] :end_date Only include usage that occurred on or before this date. Specify the date in GMT and format as &#x60;YYYY-MM-DD&#x60;.  You can also specify offsets from the current date, such as: &#x60;+30days&#x60;, which will set the end date to 30 days from the current date.
  # @option opts [Bool] :include_subaccounts Whether to include usage from the master account and all its subaccounts. Can be: &#x60;true&#x60; (the default) to include usage from the master account and all subaccounts or &#x60;false&#x60; to retrieve usage from only the specified account.
  # @option opts [Int32] :page_size How many resources to return in each list page. The default is 50, and the maximum is 1000.
  # @return [ListUsageRecordDailyResponse]
  describe "list_usage_record_daily test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for list_usage_record_last_month
  #
  # @param account_sid The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the UsageRecord resources to read.
  # @param [Hash] opts the optional parameters
  # @option opts [UsageRecordEnumCategory] :category The [usage category](https://www.twilio.com/docs/usage/api/usage-record#usage-categories) of the UsageRecord resources to read. Only UsageRecord resources in the specified category are retrieved.
  # @option opts [Time] :start_date Only include usage that has occurred on or after this date. Specify the date in GMT and format as &#x60;YYYY-MM-DD&#x60;. You can also specify offsets from the current date, such as: &#x60;-30days&#x60;, which will set the start date to be 30 days before the current date.
  # @option opts [Time] :end_date Only include usage that occurred on or before this date. Specify the date in GMT and format as &#x60;YYYY-MM-DD&#x60;.  You can also specify offsets from the current date, such as: &#x60;+30days&#x60;, which will set the end date to 30 days from the current date.
  # @option opts [Bool] :include_subaccounts Whether to include usage from the master account and all its subaccounts. Can be: &#x60;true&#x60; (the default) to include usage from the master account and all subaccounts or &#x60;false&#x60; to retrieve usage from only the specified account.
  # @option opts [Int32] :page_size How many resources to return in each list page. The default is 50, and the maximum is 1000.
  # @return [ListUsageRecordLastMonthResponse]
  describe "list_usage_record_last_month test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for list_usage_record_monthly
  #
  # @param account_sid The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the UsageRecord resources to read.
  # @param [Hash] opts the optional parameters
  # @option opts [UsageRecordEnumCategory] :category The [usage category](https://www.twilio.com/docs/usage/api/usage-record#usage-categories) of the UsageRecord resources to read. Only UsageRecord resources in the specified category are retrieved.
  # @option opts [Time] :start_date Only include usage that has occurred on or after this date. Specify the date in GMT and format as &#x60;YYYY-MM-DD&#x60;. You can also specify offsets from the current date, such as: &#x60;-30days&#x60;, which will set the start date to be 30 days before the current date.
  # @option opts [Time] :end_date Only include usage that occurred on or before this date. Specify the date in GMT and format as &#x60;YYYY-MM-DD&#x60;.  You can also specify offsets from the current date, such as: &#x60;+30days&#x60;, which will set the end date to 30 days from the current date.
  # @option opts [Bool] :include_subaccounts Whether to include usage from the master account and all its subaccounts. Can be: &#x60;true&#x60; (the default) to include usage from the master account and all subaccounts or &#x60;false&#x60; to retrieve usage from only the specified account.
  # @option opts [Int32] :page_size How many resources to return in each list page. The default is 50, and the maximum is 1000.
  # @return [ListUsageRecordMonthlyResponse]
  describe "list_usage_record_monthly test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for list_usage_record_this_month
  #
  # @param account_sid The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the UsageRecord resources to read.
  # @param [Hash] opts the optional parameters
  # @option opts [UsageRecordEnumCategory] :category The [usage category](https://www.twilio.com/docs/usage/api/usage-record#usage-categories) of the UsageRecord resources to read. Only UsageRecord resources in the specified category are retrieved.
  # @option opts [Time] :start_date Only include usage that has occurred on or after this date. Specify the date in GMT and format as &#x60;YYYY-MM-DD&#x60;. You can also specify offsets from the current date, such as: &#x60;-30days&#x60;, which will set the start date to be 30 days before the current date.
  # @option opts [Time] :end_date Only include usage that occurred on or before this date. Specify the date in GMT and format as &#x60;YYYY-MM-DD&#x60;.  You can also specify offsets from the current date, such as: &#x60;+30days&#x60;, which will set the end date to 30 days from the current date.
  # @option opts [Bool] :include_subaccounts Whether to include usage from the master account and all its subaccounts. Can be: &#x60;true&#x60; (the default) to include usage from the master account and all subaccounts or &#x60;false&#x60; to retrieve usage from only the specified account.
  # @option opts [Int32] :page_size How many resources to return in each list page. The default is 50, and the maximum is 1000.
  # @return [ListUsageRecordThisMonthResponse]
  describe "list_usage_record_this_month test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for list_usage_record_today
  #
  # @param account_sid The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the UsageRecord resources to read.
  # @param [Hash] opts the optional parameters
  # @option opts [UsageRecordEnumCategory] :category The [usage category](https://www.twilio.com/docs/usage/api/usage-record#usage-categories) of the UsageRecord resources to read. Only UsageRecord resources in the specified category are retrieved.
  # @option opts [Time] :start_date Only include usage that has occurred on or after this date. Specify the date in GMT and format as &#x60;YYYY-MM-DD&#x60;. You can also specify offsets from the current date, such as: &#x60;-30days&#x60;, which will set the start date to be 30 days before the current date.
  # @option opts [Time] :end_date Only include usage that occurred on or before this date. Specify the date in GMT and format as &#x60;YYYY-MM-DD&#x60;.  You can also specify offsets from the current date, such as: &#x60;+30days&#x60;, which will set the end date to 30 days from the current date.
  # @option opts [Bool] :include_subaccounts Whether to include usage from the master account and all its subaccounts. Can be: &#x60;true&#x60; (the default) to include usage from the master account and all subaccounts or &#x60;false&#x60; to retrieve usage from only the specified account.
  # @option opts [Int32] :page_size How many resources to return in each list page. The default is 50, and the maximum is 1000.
  # @return [ListUsageRecordTodayResponse]
  describe "list_usage_record_today test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for list_usage_record_yearly
  #
  # @param account_sid The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the UsageRecord resources to read.
  # @param [Hash] opts the optional parameters
  # @option opts [UsageRecordEnumCategory] :category The [usage category](https://www.twilio.com/docs/usage/api/usage-record#usage-categories) of the UsageRecord resources to read. Only UsageRecord resources in the specified category are retrieved.
  # @option opts [Time] :start_date Only include usage that has occurred on or after this date. Specify the date in GMT and format as &#x60;YYYY-MM-DD&#x60;. You can also specify offsets from the current date, such as: &#x60;-30days&#x60;, which will set the start date to be 30 days before the current date.
  # @option opts [Time] :end_date Only include usage that occurred on or before this date. Specify the date in GMT and format as &#x60;YYYY-MM-DD&#x60;.  You can also specify offsets from the current date, such as: &#x60;+30days&#x60;, which will set the end date to 30 days from the current date.
  # @option opts [Bool] :include_subaccounts Whether to include usage from the master account and all its subaccounts. Can be: &#x60;true&#x60; (the default) to include usage from the master account and all subaccounts or &#x60;false&#x60; to retrieve usage from only the specified account.
  # @option opts [Int32] :page_size How many resources to return in each list page. The default is 50, and the maximum is 1000.
  # @return [ListUsageRecordYearlyResponse]
  describe "list_usage_record_yearly test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for list_usage_record_yesterday
  #
  # @param account_sid The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the UsageRecord resources to read.
  # @param [Hash] opts the optional parameters
  # @option opts [UsageRecordEnumCategory] :category The [usage category](https://www.twilio.com/docs/usage/api/usage-record#usage-categories) of the UsageRecord resources to read. Only UsageRecord resources in the specified category are retrieved.
  # @option opts [Time] :start_date Only include usage that has occurred on or after this date. Specify the date in GMT and format as &#x60;YYYY-MM-DD&#x60;. You can also specify offsets from the current date, such as: &#x60;-30days&#x60;, which will set the start date to be 30 days before the current date.
  # @option opts [Time] :end_date Only include usage that occurred on or before this date. Specify the date in GMT and format as &#x60;YYYY-MM-DD&#x60;.  You can also specify offsets from the current date, such as: &#x60;+30days&#x60;, which will set the end date to 30 days from the current date.
  # @option opts [Bool] :include_subaccounts Whether to include usage from the master account and all its subaccounts. Can be: &#x60;true&#x60; (the default) to include usage from the master account and all subaccounts or &#x60;false&#x60; to retrieve usage from only the specified account.
  # @option opts [Int32] :page_size How many resources to return in each list page. The default is 50, and the maximum is 1000.
  # @return [ListUsageRecordYesterdayResponse]
  describe "list_usage_record_yesterday test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for list_usage_trigger
  # Retrieve a list of usage-triggers belonging to the account used to make the request
  # @param account_sid The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the UsageTrigger resources to read.
  # @param [Hash] opts the optional parameters
  # @option opts [UsageTriggerEnumRecurring] :recurring The frequency of recurring UsageTriggers to read. Can be: &#x60;daily&#x60;, &#x60;monthly&#x60;, or &#x60;yearly&#x60; to read recurring UsageTriggers. An empty value or a value of &#x60;alltime&#x60; reads non-recurring UsageTriggers.
  # @option opts [UsageTriggerEnumTriggerField] :trigger_by The trigger field of the UsageTriggers to read.  Can be: &#x60;count&#x60;, &#x60;usage&#x60;, or &#x60;price&#x60; as described in the [UsageRecords documentation](https://www.twilio.com/docs/usage/api/usage-record#usage-count-price).
  # @option opts [UsageRecordEnumCategory] :usage_category The usage category of the UsageTriggers to read. Must be a supported [usage categories](https://www.twilio.com/docs/usage/api/usage-record#usage-categories).
  # @option opts [Int32] :page_size How many resources to return in each list page. The default is 50, and the maximum is 1000.
  # @return [ListUsageTriggerResponse]
  describe "list_usage_trigger test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for update_usage_trigger
  # Update an instance of a usage trigger
  # @param account_sid The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the UsageTrigger resources to update.
  # @param sid The Twilio-provided string that uniquely identifies the UsageTrigger resource to update.
  # @param [Hash] opts the optional parameters
  # @option opts [HttpMethod] :callback_method
  # @option opts [String] :callback_url The URL we should call using &#x60;callback_method&#x60; when the trigger fires.
  # @option opts [String] :friendly_name A descriptive string that you create to describe the resource. It can be up to 64 characters long.
  # @return [UsageUsageTrigger]
  describe "update_usage_trigger test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end
end
