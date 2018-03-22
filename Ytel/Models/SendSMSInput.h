//
//  SendSMSInput.h
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
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
* The 10-digit SMS-enabled Ytel number (E.164 format) in which the message is sent.
*/
@property NSString* from;

/**
* The 10-digit phone number (E.164 format) that will receive the message.
*/
@property NSString* to;

/**
* The body message that is to be sent in the text.
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
@property NSString* messageStatusCallback;

/**
* Check's 'to' number can receive sms or not using Carrier API, if wireless = true then text sms is sent, else wireless = false then call is recieved to end user with audible message.
*/
@property BOOL smartsms;

/**
* Delivery reports are a method to tell your system if the message has arrived on the destination phone.
*/
@property BOOL deliveryStatus;

@end
#endif