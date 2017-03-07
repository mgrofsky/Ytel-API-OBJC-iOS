//
//  CreateInterruptedCallInput.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_CREATEINTERRUPTEDCALLINPUT
#define APIMATIC_CREATEINTERRUPTEDCALLINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"

#import "HttpAction.h"
#import "HttpActionHelper.h"
#import "InterruptedCallStatus.h"
#import "InterruptedCallStatusHelper.h"


//protocol defined for deserialization of JSON
@protocol CreateInterruptedCallInput
@end

@interface CreateInterruptedCallInput : NSObject

/**
* Call SId
*/
@property NSString* callSid;

/**
* URL the in-progress call will be redirected to
*/
@property NSString* url;

/**
* The method used to request the above Url parameter
*/
@property enum HttpAction method;

/**
* Status to set the in-progress call to
*/
@property enum InterruptedCallStatus status;

/**
* Response type format xml or json
*/
@property NSString* responseType;

@end
#endif