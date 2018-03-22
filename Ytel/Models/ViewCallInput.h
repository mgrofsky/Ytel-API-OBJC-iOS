//
//  ViewCallInput.h
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_VIEWCALLINPUT
#define APIMATIC_VIEWCALLINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol ViewCallInput
@end

@interface ViewCallInput : NSObject

/**
* The unique identifier for the voice call.
*/
@property NSString* callsid;

/**
* Response type format xml or json
*/
@property NSString* responseType;

@end
#endif