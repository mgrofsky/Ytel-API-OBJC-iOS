//
//  Direction.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#include "DirectionHelper.h"

/**
* Helper class implementation for Direction to NSString conversion
*/
@implementation DirectionHelper

+(id) stringFromDirection:(enum Direction) direction withDefault: (id) defaultValue
{
    switch(direction)
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

+(NSArray<NSString*>*) stringArrayFromDirectionArray:(NSArray<NSNumber*>*) array
{
    NSMutableArray* enums = [[NSMutableArray alloc]init]; 
    for(NSNumber* numberValue in array){
        NSNumber* stringValue = [DirectionHelper stringFromDirection:(enum Direction) numberValue.intValue withDefault:[NSNull null]];
        [enums addObject:stringValue];
    }
    return [enums copy];
}

+(enum Direction) directionFromString:(NSString*) strValue
{
    NSArray* DirectionArray = [NSArray arrayWithObjects:
                                        @"in",
                                        @"out",
                                        @"both",
                                        nil];

    return (enum Direction) [DirectionArray indexOfObject: strValue];
}


+(NSArray<NSNumber*>*) directionArrayFromStringArray:(NSArray<NSString*>*) array
{
    NSMutableArray* enums = [[NSMutableArray alloc]init]; 
    for(NSString* enumValue in array){
        NSNumber* numberValue = [NSNumber numberWithInt:[ DirectionHelper directionFromString:enumValue]];
        [enums addObject:numberValue];
    }
    return [enums copy];
}

@end