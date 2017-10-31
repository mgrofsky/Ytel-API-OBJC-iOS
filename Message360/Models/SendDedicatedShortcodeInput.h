//
//  SendDedicatedShortcodeInput.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_SENDDEDICATEDSHORTCODEINPUT
#define APIMATIC_SENDDEDICATEDSHORTCODEINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"

#import "HttpActionEnum.h"
#import "HttpActionEnumHelper.h"


//protocol defined for deserialization of JSON
@protocol SendDedicatedShortcodeInput
@end

@interface SendDedicatedShortcodeInput : NSObject

/**
* Your dedicated shortcode
*/
@property int shortcode;

/**
* The number to send your SMS to
*/
@property double to;

/**
* The body of your message
*/
@property NSString* body;

/**
* Response type format xml or json
*/
@property NSString* responseType;

/**
* Callback status method, POST or GET
*/
@property enum HttpActionEnum method;

/**
* Callback url for SMS status
*/
@property NSString* messagestatuscallback;

@end
#endif