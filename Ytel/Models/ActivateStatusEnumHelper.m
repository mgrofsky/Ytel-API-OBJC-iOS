//
//  ActivateStatusEnum.h
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#include "ActivateStatusEnumHelper.h"

/**
* Helper class implementation for ActivateStatusEnum to NSString conversion
*/
@implementation ActivateStatusEnumHelper

+(id) stringFromActivateStatusEnum:(enum ActivateStatusEnum) activateStatusEnum withDefault: (id) defaultValue
{
    switch(activateStatusEnum)
    {
        case ActivateStatusActivate:
            return @"1";

        case ActivateStatusDeActivate:
            return @"0";

        default:
            return defaultValue;
    }
}

+(NSArray<NSString*>*) stringArrayFromActivateStatusEnumArray:(NSArray<NSNumber*>*) array
{
    NSMutableArray* enums = [[NSMutableArray alloc]init]; 
    for(NSNumber* numberValue in array){
        NSNumber* stringValue = [ActivateStatusEnumHelper stringFromActivateStatusEnum:(enum ActivateStatusEnum) numberValue.intValue withDefault:[NSNull null]];
        [enums addObject:stringValue];
    }
    return [enums copy];
}

+(enum ActivateStatusEnum) activateStatusEnumFromString:(NSString*) strValue
{
    NSArray* ActivateStatusEnumArray = [NSArray arrayWithObjects:
                                        @"1",
                                        @"0",
                                        nil];

    return (enum ActivateStatusEnum) [ActivateStatusEnumArray indexOfObject: strValue];
}


+(NSArray<NSNumber*>*) activateStatusEnumArrayFromStringArray:(NSArray<NSString*>*) array
{
    NSMutableArray* enums = [[NSMutableArray alloc]init]; 
    for(NSString* enumValue in array){
        NSNumber* numberValue = [NSNumber numberWithInt:[ ActivateStatusEnumHelper activateStatusEnumFromString:enumValue]];
        [enums addObject:numberValue];
    }
    return [enums copy];
}

@end