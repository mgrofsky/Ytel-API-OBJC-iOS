//
//  BuyNumberInput.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_BUYNUMBERINPUT
#define APIMATIC_BUYNUMBERINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol BuyNumberInput
@end

@interface BuyNumberInput : NSObject

/**
* Phone number to be purchase
*/
@property NSString* phoneNumber;

/**
* Response type format xml or json
*/
@property NSString* responseType;

@end
#endif