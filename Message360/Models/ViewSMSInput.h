//
//  ViewSMSInput.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
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
* Message sid
*/
@property NSString* messagesid;

/**
* Response type format xml or json
*/
@property NSString* responseType;

@end
#endif