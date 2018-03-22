//
//  MassUpdateNumberInput.h
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_MASSUPDATENUMBERINPUT
#define APIMATIC_MASSUPDATENUMBERINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"

#import "HttpActionEnum.h"
#import "HttpActionEnumHelper.h"


//protocol defined for deserialization of JSON
@protocol MassUpdateNumberInput
@end

@interface MassUpdateNumberInput : NSObject

/**
* A valid comma(,) separated Ytel numbers. (E.164 format).
*/
@property NSString* phoneNumber;

/**
* The URL returning InboundXML incoming calls should execute when connected.
*/
@property NSString* voiceUrl;

/**
* Response type format xml or json
*/
@property NSString* responseType;

/**
* A human-readable value for labeling the number.
*/
@property NSString* friendlyName;

/**
* Specifies the HTTP method used to request the VoiceUrl once incoming call connects.
*/
@property enum HttpActionEnum voiceMethod;

/**
* URL used if any errors occur during execution of InboundXML on a call or at initial request of the voice url
*/
@property NSString* voiceFallbackUrl;

/**
* Specifies the HTTP method used to request the VoiceFallbackUrl once incoming call connects.
*/
@property enum HttpActionEnum voiceFallbackMethod;

/**
* URL that can be requested to receive notification when and how incoming call has ended.
*/
@property NSString* hangupCallback;

/**
* The HTTP method Ytel will use when requesting the HangupCallback URL.
*/
@property enum HttpActionEnum hangupCallbackMethod;

/**
* URL that can be used to monitor the phone number.
*/
@property NSString* heartbeatUrl;

/**
* The HTTP method Ytel will use when requesting the HeartbeatUrl.
*/
@property enum HttpActionEnum heartbeatMethod;

/**
* URL requested when an SMS is received.
*/
@property NSString* smsUrl;

/**
* The HTTP method Ytel will use when requesting the SmsUrl.
*/
@property enum HttpActionEnum smsMethod;

/**
* URL used if any errors occur during execution of InboundXML from an SMS or at initial request of the SmsUrl.
*/
@property NSString* smsFallbackUrl;

/**
* The HTTP method Ytel will use when URL requested if the SmsUrl is not available.
*/
@property enum HttpActionEnum smsFallbackMethod;

@end
#endif