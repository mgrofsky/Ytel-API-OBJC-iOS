//
//  CreateAvailablePhoneNumberInput.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_CREATEAVAILABLEPHONENUMBERINPUT
#define APIMATIC_CREATEAVAILABLEPHONENUMBERINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"

#import "NumberType.h"
#import "NumberTypeHelper.h"


//protocol defined for deserialization of JSON
@protocol CreateAvailablePhoneNumberInput
@end

@interface CreateAvailablePhoneNumberInput : NSObject

/**
* Number type either SMS,Voice or all
*/
@property enum NumberType numberType;

/**
* Phone Number Area Code
*/
@property NSString* areaCode;

/**
* Page Size
*/
@property int pageSize;

/**
* Response type format xml or json
*/
@property NSString* responseType;

@end
#endif