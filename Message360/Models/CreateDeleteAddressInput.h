//
//  CreateDeleteAddressInput.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_CREATEDELETEADDRESSINPUT
#define APIMATIC_CREATEDELETEADDRESSINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol CreateDeleteAddressInput
@end

@interface CreateDeleteAddressInput : NSObject

/**
* The identifier of the address to be deleted.
*/
@property NSString* addressSID;

/**
* Response type either json or xml
*/
@property NSString* responseType;

@end
#endif