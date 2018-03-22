//
//  VerifyAddressInput.h
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_VERIFYADDRESSINPUT
#define APIMATIC_VERIFYADDRESSINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol VerifyAddressInput
@end

@interface VerifyAddressInput : NSObject

/**
* The identifier of the address to be verified.
*/
@property NSString* addressid;

/**
* Response type either json or xml
*/
@property NSString* responseType;

@end
#endif