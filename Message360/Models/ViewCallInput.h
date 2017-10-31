//
//  ViewCallInput.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
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
* Call Sid id for particular Call
*/
@property NSString* callsid;

/**
* Response type format xml or json
*/
@property NSString* responseType;

@end
#endif