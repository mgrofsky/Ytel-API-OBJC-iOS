//
//  MergeNumberStatus.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#include "MergeNumberStatusHelper.h"

/**
* Helper class implementation for MergeNumberStatus to NSString conversion
*/
@implementation MergeNumberStatusHelper

+(id) stringFromMergeNumberStatus:(enum MergeNumberStatus) mergeNumberStatus withDefault: (id) defaultValue
{
    switch(mergeNumberStatus)
    {
        case MergeNumberStatusDelete:
            return @"0";

        case MergeNumberStatusMerge:
            return @"1";

        default:
            return defaultValue;
    }
}

+(NSArray<NSString*>*) stringArrayFromMergeNumberStatusArray:(NSArray<NSNumber*>*) array
{
    NSMutableArray* enums = [[NSMutableArray alloc]init]; 
    for(NSNumber* numberValue in array){
        NSNumber* stringValue = [MergeNumberStatusHelper stringFromMergeNumberStatus:(enum MergeNumberStatus) numberValue.intValue withDefault:[NSNull null]];
        [enums addObject:stringValue];
    }
    return [enums copy];
}

+(enum MergeNumberStatus) mergeNumberStatusFromString:(NSString*) strValue
{
    NSArray* MergeNumberStatusArray = [NSArray arrayWithObjects:
                                        @"0",
                                        @"1",
                                        nil];

    return (enum MergeNumberStatus) [MergeNumberStatusArray indexOfObject: strValue];
}


+(NSArray<NSNumber*>*) mergeNumberStatusArrayFromStringArray:(NSArray<NSString*>*) array
{
    NSMutableArray* enums = [[NSMutableArray alloc]init]; 
    for(NSString* enumValue in array){
        NSNumber* numberValue = [NSNumber numberWithInt:[ MergeNumberStatusHelper mergeNumberStatusFromString:enumValue]];
        [enums addObject:numberValue];
    }
    return [enums copy];
}

@end