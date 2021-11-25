require "file"
require "dir"

ORIGINAL_DATE_TIME_CONVERTER = "Time::RFC3339Converter"
NEW_DATE_TIME_CONVERTER = "Time::RFC2822Converter"

pp "processing models"
model_entries = Dir.glob("./src/twilio/models/*cr")

model_entries.each do |entry|
  pp "processing #{entry}"
  file_content = File.read(entry)
  new_file_content = file_content.gsub(ORIGINAL_DATE_TIME_CONVERTER, NEW_DATE_TIME_CONVERTER)
  File.write(entry, new_file_content)
  pp "completed #{entry}"
end

pp "processing apis"
api_entries = Dir.glob("./src/twilio/api/*cr")

ORIGINAL_ACCOUNT_SID_PARAM = "*, account_sid : String"
NEW_ACCOUNT_SID_PARAM = "*, account_sid : String = @account_sid"
ORIGINAL_DATE_TIME_FORMAT = "Time::Format::RFC_3339"
NEW_DATE_TIME_FORMAT = "Time::Format::RFC_2822"
ORIGINAL_INITIALIZER_PATTERN = /$\n^    def initialize\(api_client = ApiClient.default\)$\n^      @api_client = api_client$/m
NEW_INITIALIZER = "    property account_sid : String\n\n    def initialize(api_client = ApiClient.default)\n      @api_client = api_client\n      @account_sid = api_client.config.username.not_nil!"

api_entries.each do |entry|
  pp "processing #{entry}"
  file_content = File.read(entry)
  new_file_content = file_content
    .gsub(ORIGINAL_ACCOUNT_SID_PARAM, NEW_ACCOUNT_SID_PARAM)
    .gsub(ORIGINAL_DATE_TIME_FORMAT, NEW_DATE_TIME_FORMAT)
    .gsub(ORIGINAL_INITIALIZER_PATTERN, NEW_INITIALIZER)
  File.write(entry, new_file_content)
  pp "completed #{entry}"
end
