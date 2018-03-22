//
//  StatusEnum.h
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#include "StatusEnumHelper.h"

/**
* Helper class implementation for StatusEnum to NSString conversion
*/
@implementation StatusEnumHelper

+(id) stringFromStatusEnum:(enum StatusEnum) statusEnum withDefault: (id) defaultValue
{
    switch(statusEnum)
    {
        case StatusINPROGRESS:
            return @"inprogress";

        case StatusSuccess:
            return @"success";

        case StatusFailure:
            return @"failure";

        default:
            return defaultValue;
    }
}

+(NSArray<NSString*>*) stringArrayFromStatusEnumArray:(NSArray<NSNumber*>*) array
{
    NSMutableArray* enums = [[NSMutableArray alloc]init]; 
    for(NSNumber* numberValue in array){
        NSNumber* stringValue = [StatusEnumHelper stringFromStatusEnum:(enum StatusEnum) numberValue.intValue withDefault:[NSNull null]];
        [enums addObject:stringValue];
    }
    return [enums copy];
}

+(enum StatusEnum) statusEnumFromString:(NSString*) strValue
{
    NSArray* StatusEnumArray = [NSArray arrayWithObjects:
                                        @"inprogress",
                                        @"success",
                                        @"failure",
                                        nil];

    return (enum StatusEnum) [StatusEnumArray indexOfObject: strValue];
}


+(NSArray<NSNumber*>*) statusEnumArrayFromStringArray:(NSArray<NSString*>*) array
{
    NSMutableArray* enums = [[NSMutableArray alloc]init]; 
    for(NSString* enumValue in array){
        NSNumber* numberValue = [NSNumber numberWithInt:[ StatusEnumHelper statusEnumFromString:enumValue]];
        [enums addObject:numberValue];
    }
    return [enums copy];
}

@end