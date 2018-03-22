//
//  ListShortcodeInput.h
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_LISTSHORTCODEINPUT
#define APIMATIC_LISTSHORTCODEINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol ListShortcodeInput
@end

@interface ListShortcodeInput : NSObject

/**
* Response type format xml or json
*/
@property NSString* responseType;

/**
* Only list messages sent from this Short Code
*/
@property NSString* shortcode;

/**
* Only list messages sent to this number
*/
@property NSString* to;

/**
* Only list messages sent with the specified date
*/
@property NSString* dateSent;

/**
* The page count to retrieve from the total results in the collection. Page indexing starts at 1.
*/
@property int page;

/**
* The count of objects to return per page.
*/
@property int pageSize;

@end
#endif