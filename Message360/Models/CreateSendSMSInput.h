//
//  CreateSendSMSInput.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_CREATESENDSMSINPUT
#define APIMATIC_CREATESENDSMSINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"

#import "HttpAction.h"
#import "HttpActionHelper.h"


//protocol defined for deserialization of JSON
@protocol CreateSendSMSInput
@end

@interface CreateSendSMSInput : NSObject

/**
* From Country Code
*/
@property int fromcountrycode;

/**
* SMS enabled Message360 number to send this message from
*/
@property NSString* from;

/**
* To country code
*/
@property int tocountrycode;

/**
* Number to send the SMS to
*/
@property NSString* to;

/**
* Text Message To Send
*/
@property NSString* body;

/**
* Specifies the HTTP method used to request the required URL once SMS sent.
*/
@property enum HttpAction method;

/**
* URL that can be requested to receive notification when SMS has Sent. A set of default parameters will be sent here once the SMS is finished.
*/
@property NSString* messagestatuscallback;

/**
* Response type format xml or json
*/
@property NSString* responseType;

@end
#endif