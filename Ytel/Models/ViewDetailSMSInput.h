//
//  ViewDetailSMSInput.h
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_VIEWDETAILSMSINPUT
#define APIMATIC_VIEWDETAILSMSINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol ViewDetailSMSInput
@end

@interface ViewDetailSMSInput : NSObject

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