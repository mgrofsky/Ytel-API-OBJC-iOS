//
//  ListUsageInput.h
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
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
* Filter usage results by product type.
*/
@property enum ProductCodeEnum productCode;

/**
* Filter usage objects by start date.
*/
@property NSString* startDate;

/**
* Filter usage objects by end date.
*/
@property NSString* endDate;

/**
* Will include all subaccount usage data
*/
@property NSString* includeSubAccounts;

@end
#endif