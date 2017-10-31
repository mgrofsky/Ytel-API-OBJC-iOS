//
//  ViewAssignementInput.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_VIEWASSIGNEMENTINPUT
#define APIMATIC_VIEWASSIGNEMENTINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol ViewAssignementInput
@end

@interface ViewAssignementInput : NSObject

/**
* List of valid Shortcode to your message360 account
*/
@property NSString* shortcode;

/**
* Response type format xml or json
*/
@property NSString* responseType;

@end
#endif