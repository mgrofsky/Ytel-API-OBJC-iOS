//
//  ListShortCodeAssignmentInput.h
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_LISTSHORTCODEASSIGNMENTINPUT
#define APIMATIC_LISTSHORTCODEASSIGNMENTINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol ListShortCodeAssignmentInput
@end

@interface ListShortCodeAssignmentInput : NSObject

/**
* Response type format xml or json
*/
@property NSString* responseType;

/**
* Only list Short Code Assignment sent from this Short Code
*/
@property NSString* shortcode;

/**
* The page count to retrieve from the total results in the collection. Page indexing starts at 1.
*/
@property NSString* page;

/**
* The count of objects to return per page.
*/
@property NSString* pagesize;

@end
#endif