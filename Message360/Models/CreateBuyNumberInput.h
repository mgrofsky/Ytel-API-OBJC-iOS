//
//  CreateBuyNumberInput.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_CREATEBUYNUMBERINPUT
#define APIMATIC_CREATEBUYNUMBERINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol CreateBuyNumberInput
@end

@interface CreateBuyNumberInput : NSObject

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