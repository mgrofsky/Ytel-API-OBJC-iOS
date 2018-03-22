//
//  SendRinglessVMInput.h
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
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
* A valid Ytel Voice enabled number (E.164 format) that will be initiating the phone call.
*/
@property NSString* from;

/**
* A required secondary Caller ID for RVM to work.
*/
@property NSString* rVMCallerId;

/**
* A valid number (E.164 format) that will receive the phone call.
*/
@property NSString* to;

/**
* The URL requested once the RVM connects. A set of default parameters will be sent here.
*/
@property NSString* voiceMailURL;

/**
* Response type format xml or json
*/
@property NSString* responseType;

/**
* Specifies the HTTP method used to request the required URL once call connects.
*/
@property enum HttpActionEnum method;

/**
* URL that can be requested to receive notification when call has ended. A set of default parameters will be sent here once the call is finished.
*/
@property NSString* statusCallBackUrl;

/**
* Specifies the HTTP method used to request the required StatusCallBackUrl once call connects.
*/
@property enum HttpActionEnum statsCallBackMethod;

@end
#endif