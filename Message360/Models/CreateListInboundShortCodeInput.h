//
//  CreateListInboundShortCodeInput.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_CREATELISTINBOUNDSHORTCODEINPUT
#define APIMATIC_CREATELISTINBOUNDSHORTCODEINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol CreateListInboundShortCodeInput
@end

@interface CreateListInboundShortCodeInput : NSObject

/**
* Which page of the overall response will be returned. Zero indexed
*/
@property NSNumber* page;

/**
* Number of individual resources listed in the response per page
*/
@property int pagesize;

/**
* From Number to Inbound ShortCode
*/
@property NSString* from;

/**
* Only list messages sent to this Short Code
*/
@property NSString* shortcode;

/**
* Only list messages sent with the specified date
*/
@property NSString* dateReceived;

/**
* Response type format xml or json
*/
@property NSString* responseType;

@end
#endif