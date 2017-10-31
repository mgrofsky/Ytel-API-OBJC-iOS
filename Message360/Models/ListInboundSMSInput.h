//
//  ListInboundSMSInput.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_LISTINBOUNDSMSINPUT
#define APIMATIC_LISTINBOUNDSMSINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol ListInboundSMSInput
@end

@interface ListInboundSMSInput : NSObject

/**
* Response type format xml or json
*/
@property NSString* responseType;

/**
* Which page of the overall response will be returned. Zero indexed
*/
@property int page;

/**
* Number of individual resources listed in the response per page
*/
@property int pagesize;

/**
* From Number to Inbound SMS
*/
@property NSString* from;

/**
* To Number to get Inbound SMS
*/
@property NSString* to;

/**
* Filter sms message objects by this date.
*/
@property NSString* dateSent;

@end
#endif