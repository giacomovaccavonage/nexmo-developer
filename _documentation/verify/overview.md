---
title: Overview
meta_title: Enable 2FA with the Verify API
description: The Verify API overview.
---

# Verify API

The Verify API enables you to use [2FA](/concepts/guides/glossary#2fa) (two-factor authentication) to check that you can contact a user at a specific number.

```js_sequence_diagram
Participant Your server
Participant Nexmo
Participant User's phone
Your server-> Nexmo: 1. You request verification of a number
Nexmo-->Your server: You receive the `request_id`
Nexmo->User's phone: 2. Nexmo sends a verification code to \nthe user's phone number via SMS \nor text-to-speech
User's phone->Your server: 3. User enters verification code into your app
Your server->Nexmo: 4. You submit the `request_id` and code
Nexmo-->Your server: Nexmo sends the verification result
```

## Getting Started

The following sample shows you how to start the verification process by sending a verification code to a user. To learn how to validate the code the user supplies and perform other operations, see [verification workflow](/verify/guides/verification-workflow   ).

```building_blocks
source: '_examples/verify/send-verification-request'
```

## Features

Nexmo handles code generation, verification and delivery via the fastest route available. You pay only for successful verifications, regardless of where your user resides.

If the user does not respond to one of two SMS [within a specified time period](/verify/guides/verification-stages), the Verify API sends it as a voice call using [TTS](/concepts/guides/glossary#tts-api) (Text to Speech) based on the user's locale. For example, the TTS for a `61*` phone number is sent in English with an Australian accent (`en-au`). You can specify the language, accent and gender in the request.

By using the Verify API for 2FA, you can:

* Protect against spam, by preventing spammers from creating multiple accounts
* Monitor suspicious activity, by forcing an account user to verify ownership of a number
* Reach your users at any time, by ensuring that you have their correct phone number

## Concepts

```concept_list
product: verify
```

## Building Blocks

```building_block_list
product: verify
```

## Tutorials

```tutorials
product: verify
```

## Further Reading

* [Verify API reference](/api/verify)
* [Implement the Verify API using Node.js](https://www.nexmo.com/blog/2018/05/10/nexmo-verify-api-implementation-guide-dr/)
* [Use the Verify API in iOS apps](https://www.nexmo.com/blog/2018/05/10/add-two-factor-authentication-to-swift-ios-apps-dr/)
* [Use the Verify API in Android apps](https://www.nexmo.com/blog/2018/05/10/add-two-factor-authentication-to-android-apps-with-nexmos-verify-api-dr/)
