//
//  NumberType.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_NUMBERTYPEHELPER
#define APIMATIC_NUMBERTYPEHELPER

#include "NumberType.h"

/**
* Helper class interface for NumberType to NSString conversion
*/
@interface NumberTypeHelper : NSObject

+(id) stringFromNumberType:(enum NumberType) numberType withDefault: (id) defaultValue;

+(NSArray<NSString*>*) stringArrayFromNumberTypeArray:(NSArray<NSNumber*>*) array;


+(enum NumberType) numberTypeFromString:(NSString*) strValue;

+(NSArray<NSNumber*>*) numberTypeArrayFromStringArray:(NSArray<NSString*>*) array;

@end

#endif