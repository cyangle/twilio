# twilio

The Crystal module for the Twilio - Api

This is the public Twilio REST API.

This SDK is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project with CUSTOM templates:

- API version: 1.38.0
- Package version: 2.0.1
- Build package: org.openapitools.codegen.languages.CrystalClientCodegen
- Custom templates: [crystal_client_generator](https://github.com/cyangle/crystal_client_generator)

For more information, please visit [https://support.twilio.com](https://support.twilio.com)

## Installation

### Install from Git

Add the following to shard.yaml

```yaml
dependencies:
  twilio:
    github: cyangle/twilio
    version: ~> 2.0.1
```

## Usage

Check [here](https://www.twilio.com/docs/all) for more information about how to use twilio APIs.

Below lists only a few examples of the most interesting APIs, the client should support APIs provided by the twilio OpenAPI specification file as it's generated from the OpenAPI v3 specification `./twilio_api_v2010_fixed.json`.

### Require this shard in your project

First you need to require it.

```crystal
require "twilio"
```

Or require only specific api file.

```crystal
require "twilio/api/calls_api"
```

### Configure client with twilio credentials

```crystal
Twilio.configure do |config|
  config.username = "TWILIO_ACCOUNT_SID"
  config.password = "TWILIO_AUTH_TOKEN"
end
```

### Create an instance of Twilio::CallsApi

```crystal
api = Twilio::CallsApi.new
```

#### List phone calls

List all phone calls
```crystal
api = Twilio::CallsApi.new

page : Twilio::ListCallResponse = api.list_call

# Get next page of results
next_page : Twilio::ListCallResponse? = Twilio.next_page(page)

pp page
pp next_page
```

List phone calls with filters
```crystal
api = Twilio::CallsApi.new

page : Twilio::ListCallResponse = api.list_call(
  to: "+12345678901",
  from: "+19876543210",
  start_time_before: 2.days.ago,
  end_time_after: 50.days.ago,
  page_size: 50
)

# Get next page of results
next_page : Twilio::ListCallResponse? = Twilio.next_page(page)

pp page
pp next_page
```

#### List text messages

Require the messages api first:

```crystal
require "twilio/api/messages_api"

api = Twilio::MessagesApi.new
```

List all messages
```crystal
api = Twilio::MessagesApi.new

api.list_message
page : Twilio::ListMessageResponse = api.list_message

# Get next page of results
next_page : Twilio::ListMessageResponse? = Twilio.next_page(page)

pp page
pp next_page
```

List messages with filters
```crystal
api = Twilio::MessagesApi.new

page : Twilio::ListMessageResponse = api.list_message(
  to: "+12345678901",
  from: "+19876543210",
  date_sent_before: 2.days.ago
  date_sent_after: 15.days.ago,
  page_size: 50
)

# Get next page of results
next_page : Twilio::ListMessageResponse? = Twilio.next_page(page)

pp page
pp next_page
```

#### Send text messages

```crystal
api = Twilio::MessagesApi.new

api.create_message(
  to: "+12345678901",
  from: "+19876543210",
  body: "Hello from Twilio!",
  status_callback: "https://myapp.example/message/status_update"
)
```

#### Make outbound phone calls

```crystal
api = Twilio::CallsApi.new

api.create_call(
  to: "+12345678901",
  from: "+19876543210",
  status_callback: "https://myapp.example/phone_call/status_update",
  status_callback_method: "GET",
  status_callback_event: ["initiated", "ringing", "completed", "answered"],
  twiml: "<Response><Say>Hello from Twilio!</Say></Response>"
)
```

## Development

Install dependencies

```shell
shards
```

Run the tests:

```shell
crystal spec
```

Run lints

```shell
./bin/ameba
crystal tool format --check
```
