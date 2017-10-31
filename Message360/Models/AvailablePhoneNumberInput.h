//
//  AvailablePhoneNumberInput.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_AVAILABLEPHONENUMBERINPUT
#define APIMATIC_AVAILABLEPHONENUMBERINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"

#import "NumberTypeEnum.h"
#import "NumberTypeEnumHelper.h"


//protocol defined for deserialization of JSON
@protocol AvailablePhoneNumberInput
@end

@interface AvailablePhoneNumberInput : NSObject

/**
* Number type either SMS,Voice or all
*/
@property enum NumberTypeEnum numberType;

/**
* Phone Number Area Code
*/
@property NSString* areaCode;

/**
* Response type format xml or json
*/
@property NSString* responseType;

/**
* Page Size
*/
@property int pageSize;

@end
#endif