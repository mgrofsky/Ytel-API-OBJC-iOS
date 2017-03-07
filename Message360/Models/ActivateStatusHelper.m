//
//  ActivateStatus.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#include "ActivateStatusHelper.h"

/**
* Helper class implementation for ActivateStatus to NSString conversion
*/
@implementation ActivateStatusHelper

+(id) stringFromActivateStatus:(enum ActivateStatus) activateStatus withDefault: (id) defaultValue
{
    switch(activateStatus)
    {
        case ActivateStatusActivate:
            return @"1";

        case ActivateStatusDeActivate:
            return @"0";

        default:
            return defaultValue;
    }
}

+(NSArray<NSString*>*) stringArrayFromActivateStatusArray:(NSArray<NSNumber*>*) array
{
    NSMutableArray* enums = [[NSMutableArray alloc]init]; 
    for(NSNumber* numberValue in array){
        NSNumber* stringValue = [ActivateStatusHelper stringFromActivateStatus:(enum ActivateStatus) numberValue.intValue withDefault:[NSNull null]];
        [enums addObject:stringValue];
    }
    return [enums copy];
}

+(enum ActivateStatus) activateStatusFromString:(NSString*) strValue
{
    NSArray* ActivateStatusArray = [NSArray arrayWithObjects:
                                        @"1",
                                        @"0",
                                        nil];

    return (enum ActivateStatus) [ActivateStatusArray indexOfObject: strValue];
}


+(NSArray<NSNumber*>*) activateStatusArrayFromStringArray:(NSArray<NSString*>*) array
{
    NSMutableArray* enums = [[NSMutableArray alloc]init]; 
    for(NSString* enumValue in array){
        NSNumber* numberValue = [NSNumber numberWithInt:[ ActivateStatusHelper activateStatusFromString:enumValue]];
        [enums addObject:numberValue];
    }
    return [enums copy];
}

@end