//
//  UpdatePhoneNumberInput.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_UPDATEPHONENUMBERINPUT
#define APIMATIC_UPDATEPHONENUMBERINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"

#import "HttpActionEnum.h"
#import "HttpActionEnumHelper.h"


//protocol defined for deserialization of JSON
@protocol UpdatePhoneNumberInput
@end

@interface UpdatePhoneNumberInput : NSObject

/**
* The phone number to update
*/
@property NSString* phoneNumber;

/**
* URL requested once the call connects
*/
@property NSString* voiceUrl;

/**
* Response type format xml or json
*/
@property NSString* responseType;

/**
* Phone number friendly name description
*/
@property NSString* friendlyName;

/**
* Post or Get
*/
@property enum HttpActionEnum voiceMethod;

/**
* URL requested if the voice URL is not available
*/
@property NSString* voiceFallbackUrl;

/**
* Post or Get
*/
@property enum HttpActionEnum voiceFallbackMethod;

/**
* callback url after a hangup occurs
*/
@property NSString* hangupCallback;

/**
* Post or Get
*/
@property enum HttpActionEnum hangupCallbackMethod;

/**
* URL requested once the call connects
*/
@property NSString* heartbeatUrl;

/**
* URL that can be requested every 60 seconds during the call to notify of elapsed time
*/
@property enum HttpActionEnum heartbeatMethod;

/**
* URL requested when an SMS is received
*/
@property NSString* smsUrl;

/**
* Post or Get
*/
@property enum HttpActionEnum smsMethod;

/**
* URL requested once the call connects
*/
@property NSString* smsFallbackUrl;

/**
* URL requested if the sms URL is not available
*/
@property enum HttpActionEnum smsFallbackMethod;

@end
#endif