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
* TODO: Write general description for this field
*/
@property NSString* phoneNumber;

/**
* Response type format xml or json
*/
@property NSString* responseType;

/**
* TODO: Write general description for this field
*/
@property NSString* friendlyName;

/**
* URL requested once the call connects
*/
@property NSString* voiceUrl;

/**
* TODO: Write general description for this field
*/
@property enum HttpActionEnum voiceMethod;

/**
* URL requested if the voice URL is not available
*/
@property NSString* voiceFallbackUrl;

/**
* TODO: Write general description for this field
*/
@property enum HttpActionEnum voiceFallbackMethod;

/**
* TODO: Write general description for this field
*/
@property NSString* hangupCallback;

/**
* TODO: Write general description for this field
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
* TODO: Write general description for this field
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