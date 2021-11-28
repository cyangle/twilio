# twilio

The Crystal module for the Twilio - Api

This is the public Twilio REST API.

This SDK is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project with CUSTOM templates:

- API version: 1.23.1
- Package version: 1.23.8
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
    version: ~> 1.23.8
```

## Usage

Check [here](https://www.twilio.com/docs/all) for more information about how to use twilio APIs.

Below lists only a few examples of the most interesting APIs, the client should support APIs provided by the twilio OpenAPI specification file as it's generated from the OpenAPI v3 specification `./twilio_api_v2010_1.23.1_fixed.json`.

### JSON serialization

This shard uses [nason](https://github.com/cyangle/nason) for JSON (de)serialization.

### Require this shard in your project

First you need to require it.

```crystal
require "twilio"
```

### Configure client with twilio credentials

```crystal
Twilio.configure do |config|
  config.username = "TWILIO_ACCOUNT_SID"
  config.password = "TWILIO_AUTH_TOKEN"
end
```

### Create an instance of Twilio::DefaultApi

```crystal
api = Twilio::DefaultApi.new
```

#### List phone calls

List all phone calls
```crystal
api.list_call
```

List phone calls with filters
```crystal
api.list_call(
  to: "+12345678901",
  from: "+19876543210",
  start_time_before: 2.days.ago,
  end_time_after: 50.days.ago,
  page_size: 50
)
```

#### List text messages

List all messages
```crystal
api.list_message
```

List messages with filters
```crystal
api.list_message(
  to: "+12345678901",
  from: "+19876543210",
  date_sent_before: 2.days.ago
  date_sent_after: 15.days.ago,
  page_size: 50
)
```

#### Send text messages

```crystal
api.create_message(
  to: "+12345678901",
  from: "+19876543210",
  body: "Hello from Twilio!",
  status_callback: "https://myapp.example/message/status_update"
)
```

#### Make outbound phone calls

```crystal
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
