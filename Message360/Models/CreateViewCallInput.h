//
//  CreateViewCallInput.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_CREATEVIEWCALLINPUT
#define APIMATIC_CREATEVIEWCALLINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol CreateViewCallInput
@end

@interface CreateViewCallInput : NSObject

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