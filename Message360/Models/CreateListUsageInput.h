//
//  CreateListUsageInput.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_CREATELISTUSAGEINPUT
#define APIMATIC_CREATELISTUSAGEINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"

#import "ProductCodeEnum.h"
#import "ProductCodeEnumHelper.h"


//protocol defined for deserialization of JSON
@protocol CreateListUsageInput
@end

@interface CreateListUsageInput : NSObject

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

/**
* Response type format xml or json
*/
@property NSString* responseType;

@end
#endif