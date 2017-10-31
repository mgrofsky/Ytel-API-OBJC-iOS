//
//  SendRinglessVMInput.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_SENDRINGLESSVMINPUT
#define APIMATIC_SENDRINGLESSVMINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"

#import "HttpActionEnum.h"
#import "HttpActionEnumHelper.h"


//protocol defined for deserialization of JSON
@protocol SendRinglessVMInput
@end

@interface SendRinglessVMInput : NSObject

/**
* This number to display on Caller ID as calling
*/
@property NSString* from;

/**
* Alternate caller ID required for RVM
*/
@property NSString* rVMCallerId;

/**
* To number
*/
@property NSString* to;

/**
* URL to an audio file
*/
@property NSString* voiceMailURL;

/**
* Response type format xml or json
*/
@property NSString* responseType;

/**
* Not currently used in this version
*/
@property enum HttpActionEnum method;

/**
* URL to post the status of the Ringless request
*/
@property NSString* statusCallBackUrl;

/**
* POST or GET
*/
@property enum HttpActionEnum statsCallBackMethod;

@end
#endif