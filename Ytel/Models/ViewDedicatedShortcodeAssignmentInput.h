//
//  ViewDedicatedShortcodeAssignmentInput.h
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_VIEWDEDICATEDSHORTCODEASSIGNMENTINPUT
#define APIMATIC_VIEWDEDICATEDSHORTCODEASSIGNMENTINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol ViewDedicatedShortcodeAssignmentInput
@end

@interface ViewDedicatedShortcodeAssignmentInput : NSObject

/**
* List of valid Dedicated Short Code to your Ytel account
*/
@property NSString* shortcode;

/**
* Response type format xml or json
*/
@property NSString* responseType;

@end
#endif