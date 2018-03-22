//
//  ViewSharedShortcodesInput.h
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_VIEWSHAREDSHORTCODESINPUT
#define APIMATIC_VIEWSHAREDSHORTCODESINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol ViewSharedShortcodesInput
@end

@interface ViewSharedShortcodesInput : NSObject

/**
* Message sid
*/
@property NSString* messagesid;

/**
* Response type format xml or json
*/
@property NSString* responseType;

@end
#endif