//
//  CreateDeleteUnsubscribesInput.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_CREATEDELETEUNSUBSCRIBESINPUT
#define APIMATIC_CREATEDELETEUNSUBSCRIBESINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol CreateDeleteUnsubscribesInput
@end

@interface CreateDeleteUnsubscribesInput : NSObject

/**
* The email to remove from the unsubscribe list
*/
@property NSString* email;

/**
* Response type format xml or json
*/
@property NSString* responseType;

@end
#endif