//
//  MergeNumberStatus.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_MERGENUMBERSTATUSHELPER
#define APIMATIC_MERGENUMBERSTATUSHELPER

#include "MergeNumberStatus.h"

/**
* Helper class interface for MergeNumberStatus to NSString conversion
*/
@interface MergeNumberStatusHelper : NSObject

+(id) stringFromMergeNumberStatus:(enum MergeNumberStatus) mergeNumberStatus withDefault: (id) defaultValue;

+(NSArray<NSString*>*) stringArrayFromMergeNumberStatusArray:(NSArray<NSNumber*>*) array;


+(enum MergeNumberStatus) mergeNumberStatusFromString:(NSString*) strValue;

+(NSArray<NSNumber*>*) mergeNumberStatusArrayFromStringArray:(NSArray<NSString*>*) array;

@end

#endif