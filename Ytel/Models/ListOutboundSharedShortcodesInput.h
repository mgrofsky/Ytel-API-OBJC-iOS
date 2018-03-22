//
//  ListOutboundSharedShortcodesInput.h
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_LISTOUTBOUNDSHAREDSHORTCODESINPUT
#define APIMATIC_LISTOUTBOUNDSHAREDSHORTCODESINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol ListOutboundSharedShortcodesInput
@end

@interface ListOutboundSharedShortcodesInput : NSObject

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
* Only list messages sent from this Short Code
*/
@property NSString* shortcode;

/**
* Only list messages sent to this number
*/
@property NSString* to;

/**
* Only list SMS messages sent in the specified date range
*/
@property NSString* datesent;

@end
#endif