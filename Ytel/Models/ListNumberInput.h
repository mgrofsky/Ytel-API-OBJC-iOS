//
//  ListNumberInput.h
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_LISTNUMBERINPUT
#define APIMATIC_LISTNUMBERINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"

#import "NumberTypeEnum.h"
#import "NumberTypeEnumHelper.h"


//protocol defined for deserialization of JSON
@protocol ListNumberInput
@end

@interface ListNumberInput : NSObject

/**
* Response type format xml or json
*/
@property NSString* responseType;

/**
* Which page of the overall response will be returned. Page indexing starts at 1.
*/
@property int page;

/**
* The page count to retrieve from the total results in the collection. Page indexing starts at 1.
*/
@property int pageSize;

/**
* The capability supported by the number.Number type either SMS,Voice or all
*/
@property enum NumberTypeEnum numberType;

/**
* A human-readable label added to the number object.
*/
@property NSString* friendlyName;

@end
#endif