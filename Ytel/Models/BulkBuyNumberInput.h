//
//  BulkBuyNumberInput.h
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_BULKBUYNUMBERINPUT
#define APIMATIC_BULKBUYNUMBERINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"

#import "NumberTypeEnum.h"
#import "NumberTypeEnumHelper.h"


//protocol defined for deserialization of JSON
@protocol BulkBuyNumberInput
@end

@interface BulkBuyNumberInput : NSObject

/**
* The capability the number supports.
*/
@property enum NumberTypeEnum numberType;

/**
* Specifies the area code for the returned list of available numbers. Only available for North American numbers.
*/
@property NSString* areaCode;

/**
* A positive integer that tells how many number you want to buy at a time.
*/
@property NSString* quantity;

/**
* Response type format xml or json
*/
@property NSString* responseType;

/**
* If desired quantity is unavailable purchase what is available .
*/
@property NSString* leftover;

@end
#endif