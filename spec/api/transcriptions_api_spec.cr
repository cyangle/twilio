#  Twilio - Api
#
# This is the public Twilio REST API.
#
# The version of the OpenAPI document: 1.38.0
# Contact: support@twilio.com
# Generated by: https://openapi-generator.tech
#

require "../spec_helper"
require "../../src/twilio/api/transcriptions_api"

# Unit tests for Twilio::TranscriptionsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe "TranscriptionsApi" do
  describe "test an instance of TranscriptionsApi" do
    it "should create an instance of TranscriptionsApi" do
      api_instance = Twilio::TranscriptionsApi.new
      api_instance.should be_a(Twilio::TranscriptionsApi)
    end
  end

  # unit tests for delete_transcription
  # Delete a transcription from the account used to make the request
  # @param account_sid The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the Transcription resources to delete.
  # @param sid The Twilio-provided string that uniquely identifies the Transcription resource to delete.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe "delete_transcription test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for fetch_transcription
  # Fetch an instance of a Transcription
  # @param account_sid The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the Transcription resource to fetch.
  # @param sid The Twilio-provided string that uniquely identifies the Transcription resource to fetch.
  # @param [Hash] opts the optional parameters
  # @return [Transcription]
  describe "fetch_transcription test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for list_transcription
  # Retrieve a list of transcriptions belonging to the account used to make the request
  # @param account_sid The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the Transcription resources to read.
  # @param [Hash] opts the optional parameters
  # @option opts [Int32] :page_size How many resources to return in each list page. The default is 50, and the maximum is 1000.
  # @return [ListTranscriptionResponse]
  describe "list_transcription test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end
end
