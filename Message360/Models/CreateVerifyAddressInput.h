//
//  CreateVerifyAddressInput.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_CREATEVERIFYADDRESSINPUT
#define APIMATIC_CREATEVERIFYADDRESSINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol CreateVerifyAddressInput
@end

@interface CreateVerifyAddressInput : NSObject

/**
* The identifier of the address to be verified.
*/
@property NSString* addressSID;

/**
* Response type either json or xml
*/
@property NSString* responseType;

@end
#endif