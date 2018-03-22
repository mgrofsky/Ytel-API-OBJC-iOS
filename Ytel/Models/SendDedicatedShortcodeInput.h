//
//  SendDedicatedShortcodeInput.h
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
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
* Specifies the HTTP method used to request the required URL once the Short Code message is sent.GET or POST
*/
@property enum HttpActionEnum method;

/**
* URL that can be requested to receive notification when Short Code message was sent.
*/
@property NSString* messagestatuscallback;

@end
#endif