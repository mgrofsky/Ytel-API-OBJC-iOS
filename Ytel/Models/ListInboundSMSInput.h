//
//  ListInboundSMSInput.h
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
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
* The page count to retrieve from the total results in the collection. Page indexing starts at 1.
*/
@property int page;

/**
* The count of objects to return per page.
*/
@property int pageSize;

/**
* Filter SMS message objects from this valid 10-digit phone number (E.164 format).
*/
@property NSString* from;

/**
* Filter SMS message objects to this valid 10-digit phone number (E.164 format).
*/
@property NSString* to;

/**
* Filter sms message objects by this date.
*/
@property NSString* dateSent;

@end
#endif