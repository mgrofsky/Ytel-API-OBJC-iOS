//
//  CreateViewAddressInput.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_CREATEVIEWADDRESSINPUT
#define APIMATIC_CREATEVIEWADDRESSINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol CreateViewAddressInput
@end

@interface CreateViewAddressInput : NSObject

/**
* The identifier of the address to be retrieved.
*/
@property NSString* addressSID;

/**
* Response Type either json or xml
*/
@property NSString* responseType;

@end
#endif