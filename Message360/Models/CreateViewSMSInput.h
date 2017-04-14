//
//  CreateViewSMSInput.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_CREATEVIEWSMSINPUT
#define APIMATIC_CREATEVIEWSMSINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol CreateViewSMSInput
@end

@interface CreateViewSMSInput : NSObject

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