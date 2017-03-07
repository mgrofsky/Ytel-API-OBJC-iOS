//
//  CreateSendShortCodeInput.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_CREATESENDSHORTCODEINPUT
#define APIMATIC_CREATESENDSHORTCODEINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol CreateSendShortCodeInput
@end

@interface CreateSendShortCodeInput : NSObject

/**
* The Short Code number that is the sender of this message
*/
@property NSString* shortcode;

/**
* The country code for sending this message
*/
@property NSString* tocountrycode;

/**
* A valid 10-digit number that should receive the message+
*/
@property NSString* to;

/**
* The unique identifier for the template used for the message
*/
@property NSUUID* templateid;

/**
* Specifies the HTTP method used to request the required URL once the Short Code message is sent.
*/
@property NSString* method;

/**
* URL that can be requested to receive notification when Short Code message was sent.
*/
@property NSString* messageStatusCallback;

/**
* Response type format xml or json
*/
@property NSString* responseType;

@end
#endif