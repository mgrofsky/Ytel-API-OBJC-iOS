//
//  ViewShortcodeInput.h
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_VIEWSHORTCODEINPUT
#define APIMATIC_VIEWSHORTCODEINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol ViewShortcodeInput
@end

@interface ViewShortcodeInput : NSObject

/**
* The unique identifier for the sms resource
*/
@property NSString* messageSid;

/**
* Response type format xml or json
*/
@property NSString* responseType;

@end
#endif