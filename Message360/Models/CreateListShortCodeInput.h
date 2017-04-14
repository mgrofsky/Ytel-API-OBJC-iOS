//
//  CreateListShortCodeInput.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_CREATELISTSHORTCODEINPUT
#define APIMATIC_CREATELISTSHORTCODEINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol CreateListShortCodeInput
@end

@interface CreateListShortCodeInput : NSObject

/**
* Which page of the overall response will be returned. Zero indexed
*/
@property NSNumber* page;

/**
* Number of individual resources listed in the response per page
*/
@property int pagesize;

/**
* Messages sent from this number
*/
@property NSString* from;

/**
* Messages sent to this number
*/
@property NSString* to;

/**
* Only list SMS messages sent in the specified date range
*/
@property NSString* datesent;

/**
* Response type format xml or json
*/
@property NSString* responseType;

@end
#endif