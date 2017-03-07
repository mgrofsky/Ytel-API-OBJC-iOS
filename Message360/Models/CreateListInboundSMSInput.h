//
//  CreateListInboundSMSInput.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_CREATELISTINBOUNDSMSINPUT
#define APIMATIC_CREATELISTINBOUNDSMSINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol CreateListInboundSMSInput
@end

@interface CreateListInboundSMSInput : NSObject

/**
* Which page of the overall response will be returned. Zero indexed
*/
@property NSNumber* page;

/**
* Number of individual resources listed in the response per page
*/
@property NSString* pagesize;

/**
* From Number to Inbound SMS
*/
@property NSString* from;

/**
* To Number to get Inbound SMS
*/
@property NSString* to;

/**
* Response type format xml or json
*/
@property NSString* responseType;

@end
#endif