//
//  SendSMSInput.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_SENDSMSINPUT
#define APIMATIC_SENDSMSINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"

#import "HttpActionEnum.h"
#import "HttpActionEnumHelper.h"


//protocol defined for deserialization of JSON
@protocol SendSMSInput
@end

@interface SendSMSInput : NSObject

/**
* SMS enabled Message360 number to send this message from
*/
@property NSString* from;

/**
* Number to send the SMS to
*/
@property NSString* to;

/**
* Text Message To Send
*/
@property NSString* body;

/**
* Response type format xml or json
*/
@property NSString* responseType;

/**
* Specifies the HTTP method used to request the required URL once SMS sent.
*/
@property enum HttpActionEnum method;

/**
* URL that can be requested to receive notification when SMS has Sent. A set of default parameters will be sent here once the SMS is finished.
*/
@property NSString* messagestatuscallback;

/**
* Check's 'to' number can receive sms or not using Carrier API, if wireless = true then text sms is sent, else wireless = false then call is recieved to end user with audible message.
*/
@property BOOL smartsms;

@end
#endif