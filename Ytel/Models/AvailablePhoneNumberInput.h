//
//  AvailablePhoneNumberInput.h
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
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
@property enum NumberTypeEnum numbertype;

/**
* Specifies the area code for the returned list of available numbers. Only available for North American numbers.
*/
@property NSString* areacode;

/**
* Response type format xml or json
*/
@property NSString* responseType;

/**
* The count of objects to return.
*/
@property int pagesize;

@end
#endif