//
//  AddUnsubscribesInput.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_ADDUNSUBSCRIBESINPUT
#define APIMATIC_ADDUNSUBSCRIBESINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol AddUnsubscribesInput
@end

@interface AddUnsubscribesInput : NSObject

/**
* The email to add to the unsubscribe list
*/
@property NSString* email;

/**
* Response type format xml or json
*/
@property NSString* responseType;

@end
#endif