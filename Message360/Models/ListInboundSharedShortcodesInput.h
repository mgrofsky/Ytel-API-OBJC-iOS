//
//  ListInboundSharedShortcodesInput.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_LISTINBOUNDSHAREDSHORTCODESINPUT
#define APIMATIC_LISTINBOUNDSHAREDSHORTCODESINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol ListInboundSharedShortcodesInput
@end

@interface ListInboundSharedShortcodesInput : NSObject

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

@end
#endif