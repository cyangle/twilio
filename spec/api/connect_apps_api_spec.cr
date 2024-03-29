#  Twilio - Api
#
# This is the public Twilio REST API.
#
# The version of the OpenAPI document: 1.38.0
# Contact: support@twilio.com
# Generated by: https://openapi-generator.tech
#

require "../spec_helper"
require "../../src/twilio/api/connect_apps_api"

# Unit tests for Twilio::ConnectAppsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe "ConnectAppsApi" do
  describe "test an instance of ConnectAppsApi" do
    it "should create an instance of ConnectAppsApi" do
      api_instance = Twilio::ConnectAppsApi.new
      api_instance.should be_a(Twilio::ConnectAppsApi)
    end
  end

  # unit tests for delete_connect_app
  # Delete an instance of a connect-app
  # @param account_sid The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the ConnectApp resource to fetch.
  # @param sid The Twilio-provided string that uniquely identifies the ConnectApp resource to fetch.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe "delete_connect_app test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for fetch_connect_app
  # Fetch an instance of a connect-app
  # @param account_sid The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the ConnectApp resource to fetch.
  # @param sid The Twilio-provided string that uniquely identifies the ConnectApp resource to fetch.
  # @param [Hash] opts the optional parameters
  # @return [ConnectApp]
  describe "fetch_connect_app test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for list_connect_app
  # Retrieve a list of connect-apps belonging to the account used to make the request
  # @param account_sid The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the ConnectApp resources to read.
  # @param [Hash] opts the optional parameters
  # @option opts [Int32] :page_size How many resources to return in each list page. The default is 50, and the maximum is 1000.
  # @return [ListConnectAppResponse]
  describe "list_connect_app test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for update_connect_app
  # Update a connect-app with the specified parameters
  # @param account_sid The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the ConnectApp resources to update.
  # @param sid The Twilio-provided string that uniquely identifies the ConnectApp resource to update.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :authorize_redirect_url The URL to redirect the user to after we authenticate the user and obtain authorization to access the Connect App.
  # @option opts [String] :company_name The company name to set for the Connect App.
  # @option opts [HttpMethod] :deauthorize_callback_method
  # @option opts [String] :deauthorize_callback_url The URL to call using the &#x60;deauthorize_callback_method&#x60; to de-authorize the Connect App.
  # @option opts [String] :description A description of the Connect App.
  # @option opts [String] :friendly_name A descriptive string that you create to describe the resource. It can be up to 64 characters long.
  # @option opts [String] :homepage_url A public URL where users can obtain more information about this Connect App.
  # @option opts [Array(ConnectAppEnumPermission)] :permissions A comma-separated list of the permissions you will request from the users of this ConnectApp.  Can include: &#x60;get-all&#x60; and &#x60;post-all&#x60;.
  # @return [ConnectApp]
  describe "update_connect_app test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end
end
