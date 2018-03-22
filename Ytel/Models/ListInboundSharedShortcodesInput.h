//
//  ListInboundSharedShortcodesInput.h
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
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
* The page count to retrieve from the total results in the collection. Page indexing starts at 1.
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
@property NSString* datecreated;

@end
#endif