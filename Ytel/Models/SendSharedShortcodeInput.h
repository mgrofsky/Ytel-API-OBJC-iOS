//
//  SendSharedShortcodeInput.h
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_SENDSHAREDSHORTCODEINPUT
#define APIMATIC_SENDSHAREDSHORTCODEINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"

#import "HttpActionEnum.h"
#import "HttpActionEnumHelper.h"


//protocol defined for deserialization of JSON
@protocol SendSharedShortcodeInput
@end

@interface SendSharedShortcodeInput : NSObject

/**
* The Short Code number that is the sender of this message
*/
@property NSString* shortcode;

/**
* A valid 10-digit number that should receive the message
*/
@property NSString* to;

/**
* The unique identifier for the template used for the message
*/
@property NSUUID* templateid;

/**
* Response type format xml or json
*/
@property NSString* responseType;

/**
* format of your data, example: {companyname}:test,{otpcode}:1234
*/
@property NSString* data;

/**
* Specifies the HTTP method used to request the required URL once the Short Code message is sent.
*/
@property enum HttpActionEnum method;

/**
* URL that can be requested to receive notification when Short Code message was sent.
*/
@property NSString* messageStatusCallback;

@end
#endif