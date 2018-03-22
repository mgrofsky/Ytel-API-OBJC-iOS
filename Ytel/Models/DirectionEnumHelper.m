//
//  DirectionEnum.h
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#include "DirectionEnumHelper.h"

/**
* Helper class implementation for DirectionEnum to NSString conversion
*/
@implementation DirectionEnumHelper

+(id) stringFromDirectionEnum:(enum DirectionEnum) directionEnum withDefault: (id) defaultValue
{
    switch(directionEnum)
    {
        case DirectionIN:
            return @"in";

        case DirectionOUT:
            return @"out";

        case DirectionBOTH:
            return @"both";

        default:
            return defaultValue;
    }
}

+(NSArray<NSString*>*) stringArrayFromDirectionEnumArray:(NSArray<NSNumber*>*) array
{
    NSMutableArray* enums = [[NSMutableArray alloc]init]; 
    for(NSNumber* numberValue in array){
        NSNumber* stringValue = [DirectionEnumHelper stringFromDirectionEnum:(enum DirectionEnum) numberValue.intValue withDefault:[NSNull null]];
        [enums addObject:stringValue];
    }
    return [enums copy];
}

+(enum DirectionEnum) directionEnumFromString:(NSString*) strValue
{
    NSArray* DirectionEnumArray = [NSArray arrayWithObjects:
                                        @"in",
                                        @"out",
                                        @"both",
                                        nil];

    return (enum DirectionEnum) [DirectionEnumArray indexOfObject: strValue];
}


+(NSArray<NSNumber*>*) directionEnumArrayFromStringArray:(NSArray<NSString*>*) array
{
    NSMutableArray* enums = [[NSMutableArray alloc]init]; 
    for(NSString* enumValue in array){
        NSNumber* numberValue = [NSNumber numberWithInt:[ DirectionEnumHelper directionEnumFromString:enumValue]];
        [enums addObject:numberValue];
    }
    return [enums copy];
}

@end