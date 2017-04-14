//
//  MergeNumberStatusEnum.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_MERGENUMBERSTATUSENUMHELPER
#define APIMATIC_MERGENUMBERSTATUSENUMHELPER

#include "MergeNumberStatusEnum.h"

/**
* Helper class interface for MergeNumberStatusEnum to NSString conversion
*/
@interface MergeNumberStatusEnumHelper : NSObject

+(id) stringFromMergeNumberStatusEnum:(enum MergeNumberStatusEnum) mergeNumberStatusEnum withDefault: (id) defaultValue;

+(NSArray<NSString*>*) stringArrayFromMergeNumberStatusEnumArray:(NSArray<NSNumber*>*) array;


+(enum MergeNumberStatusEnum) mergeNumberStatusEnumFromString:(NSString*) strValue;

+(NSArray<NSNumber*>*) mergeNumberStatusEnumArrayFromStringArray:(NSArray<NSString*>*) array;

@end

#endif