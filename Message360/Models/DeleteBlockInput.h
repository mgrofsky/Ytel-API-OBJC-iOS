//
//  DeleteBlockInput.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_DELETEBLOCKINPUT
#define APIMATIC_DELETEBLOCKINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol DeleteBlockInput
@end

@interface DeleteBlockInput : NSObject

/**
* Email address to remove from block list
*/
@property NSString* email;

/**
* Response type format xml or json
*/
@property NSString* responseType;

@end
#endif