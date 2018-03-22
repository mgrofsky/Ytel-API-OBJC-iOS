//
//  ViewSMSInput.h
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_VIEWSMSINPUT
#define APIMATIC_VIEWSMSINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol ViewSMSInput
@end

@interface ViewSMSInput : NSObject

/**
* The unique identifier for a sms message.
*/
@property NSString* messageSid;

/**
* Response type format xml or json
*/
@property NSString* responseType;

@end
#endif