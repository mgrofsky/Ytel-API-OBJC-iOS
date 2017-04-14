//
//  ProductCodeEnum.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_PRODUCTCODEENUMHELPER
#define APIMATIC_PRODUCTCODEENUMHELPER

#include "ProductCodeEnum.h"

/**
* Helper class interface for ProductCodeEnum to NSString conversion
*/
@interface ProductCodeEnumHelper : NSObject

+(id) stringFromProductCodeEnum:(enum ProductCodeEnum) productCodeEnum withDefault: (id) defaultValue;

+(NSArray<NSString*>*) stringArrayFromProductCodeEnumArray:(NSArray<NSNumber*>*) array;


+(enum ProductCodeEnum) productCodeEnumFromString:(NSString*) strValue;

+(NSArray<NSNumber*>*) productCodeEnumArrayFromStringArray:(NSArray<NSString*>*) array;

@end

#endif