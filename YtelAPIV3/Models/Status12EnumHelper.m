//
//  YtelAPIV3
//
//  This file was automatically generated by APIMATIC v2.0 ( https://apimatic.io ).
//
#include "Status12EnumHelper.h"

/**
* Helper class implementation for Status12Enum to NSString conversion
*/
@implementation Status12EnumHelper

+(id) stringFromStatus12Enum:(enum Status12Enum) status12Enum withDefault: (id) defaultValue
{
    switch(status12Enum)
    {
        case Status12Inprogress:
            return @"inprogress";

        case Status12Success:
            return @"success";

        case Status12Failure:
            return @"failure";

        default:
            return defaultValue;
    }
}

+(NSArray<NSString*>*) stringArrayFromStatus12EnumArray:(NSArray<NSNumber*>*) array
{
    NSMutableArray* enums = [[NSMutableArray alloc]init]; 
    for(NSNumber* numberValue in array){
        NSNumber* stringValue = [Status12EnumHelper stringFromStatus12Enum:(enum Status12Enum) numberValue.intValue withDefault:[NSNull null]];
        [enums addObject:stringValue];
    }
    return [enums copy];
}

+(enum Status12Enum) status12EnumFromString:(NSString*) strValue
{
    NSArray* Status12EnumArray = [NSArray arrayWithObjects:
                                        @"inprogress",
                                        @"success",
                                        @"failure",
                                        nil];

    return (enum Status12Enum) [Status12EnumArray indexOfObject: strValue];
}


+(NSArray<NSNumber*>*) status12EnumArrayFromStringArray:(NSArray<NSString*>*) array
{
    NSMutableArray* enums = [[NSMutableArray alloc]init]; 
    for(NSString* enumValue in array){
        NSNumber* numberValue = [NSNumber numberWithInt:[ Status12EnumHelper status12EnumFromString:enumValue]];
        [enums addObject:numberValue];
    }
    return [enums copy];
}

@end