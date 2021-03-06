//
//  YtelAPIV3
//
//  This file was automatically generated by APIMATIC v2.0 ( https://apimatic.io ).
//
#include "Status24EnumHelper.h"

/**
* Helper class implementation for Status24Enum to NSString conversion
*/
@implementation Status24EnumHelper

+(id) stringFromStatus24Enum:(enum Status24Enum) status24Enum withDefault: (id) defaultValue
{
    switch(status24Enum)
    {
        case Status24CANCELED:
            return @"canceled";

        case Status24COMPLETED:
            return @"completed";

        default:
            return defaultValue;
    }
}

+(NSArray<NSString*>*) stringArrayFromStatus24EnumArray:(NSArray<NSNumber*>*) array
{
    NSMutableArray* enums = [[NSMutableArray alloc]init]; 
    for(NSNumber* numberValue in array){
        NSNumber* stringValue = [Status24EnumHelper stringFromStatus24Enum:(enum Status24Enum) numberValue.intValue withDefault:[NSNull null]];
        [enums addObject:stringValue];
    }
    return [enums copy];
}

+(enum Status24Enum) status24EnumFromString:(NSString*) strValue
{
    NSArray* Status24EnumArray = [NSArray arrayWithObjects:
                                        @"canceled",
                                        @"completed",
                                        nil];

    return (enum Status24Enum) [Status24EnumArray indexOfObject: strValue];
}


+(NSArray<NSNumber*>*) status24EnumArrayFromStringArray:(NSArray<NSString*>*) array
{
    NSMutableArray* enums = [[NSMutableArray alloc]init]; 
    for(NSString* enumValue in array){
        NSNumber* numberValue = [NSNumber numberWithInt:[ Status24EnumHelper status24EnumFromString:enumValue]];
        [enums addObject:numberValue];
    }
    return [enums copy];
}

@end