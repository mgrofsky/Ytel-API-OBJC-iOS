//
//  ListUsageInput.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_LISTUSAGEINPUT
#define APIMATIC_LISTUSAGEINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"

#import "ProductCodeEnum.h"
#import "ProductCodeEnumHelper.h"


//protocol defined for deserialization of JSON
@protocol ListUsageInput
@end

@interface ListUsageInput : NSObject

/**
* Response type format xml or json
*/
@property NSString* responseType;

/**
* Product Code
*/
@property enum ProductCodeEnum productCode;

/**
* Start Usage Date
*/
@property NSString* startDate;

/**
* End Usage Date
*/
@property NSString* endDate;

@end
#endif