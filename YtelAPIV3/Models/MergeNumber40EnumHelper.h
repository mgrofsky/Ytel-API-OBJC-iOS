//
//  YtelAPIV3
//
//  This file was automatically generated by APIMATIC v2.0 ( https://apimatic.io ).
//
#ifndef APIMATIC_MERGENUMBER40ENUMHELPER
#define APIMATIC_MERGENUMBER40ENUMHELPER

#include "MergeNumber40Enum.h"

/**
* Helper class interface for MergeNumber40Enum to NSString conversion
*/
@interface MergeNumber40EnumHelper : NSObject

+(id) stringFromMergeNumber40Enum:(enum MergeNumber40Enum) mergeNumber40Enum withDefault: (id) defaultValue;

+(NSArray<NSString*>*) stringArrayFromMergeNumber40EnumArray:(NSArray<NSNumber*>*) array;


+(enum MergeNumber40Enum) mergeNumber40EnumFromString:(NSString*) strValue;

+(NSArray<NSNumber*>*) mergeNumber40EnumArrayFromStringArray:(NSArray<NSString*>*) array;

@end

#endif