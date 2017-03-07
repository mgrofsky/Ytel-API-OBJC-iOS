//
//  ProductCode.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_PRODUCTCODEHELPER
#define APIMATIC_PRODUCTCODEHELPER

#include "ProductCode.h"

/**
* Helper class interface for ProductCode to NSString conversion
*/
@interface ProductCodeHelper : NSObject

+(id) stringFromProductCode:(enum ProductCode) productCode withDefault: (id) defaultValue;

+(NSArray<NSString*>*) stringArrayFromProductCodeArray:(NSArray<NSNumber*>*) array;


+(enum ProductCode) productCodeFromString:(NSString*) strValue;

+(NSArray<NSNumber*>*) productCodeArrayFromStringArray:(NSArray<NSString*>*) array;

@end

#endif