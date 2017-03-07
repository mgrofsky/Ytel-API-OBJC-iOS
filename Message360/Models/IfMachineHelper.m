//
//  IfMachine.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#include "IfMachineHelper.h"

/**
* Helper class implementation for IfMachine to NSString conversion
*/
@implementation IfMachineHelper

+(id) stringFromIfMachine:(enum IfMachine) ifMachine withDefault: (id) defaultValue
{
    switch(ifMachine)
    {
        case IfMachineCONTINUE:
            return @"continue";

        case IfMachineHANGUP:
            return @"hangup";

        default:
            return defaultValue;
    }
}

+(NSArray<NSString*>*) stringArrayFromIfMachineArray:(NSArray<NSNumber*>*) array
{
    NSMutableArray* enums = [[NSMutableArray alloc]init]; 
    for(NSNumber* numberValue in array){
        NSNumber* stringValue = [IfMachineHelper stringFromIfMachine:(enum IfMachine) numberValue.intValue withDefault:[NSNull null]];
        [enums addObject:stringValue];
    }
    return [enums copy];
}

+(enum IfMachine) ifMachineFromString:(NSString*) strValue
{
    NSArray* IfMachineArray = [NSArray arrayWithObjects:
                                        @"continue",
                                        @"hangup",
                                        nil];

    return (enum IfMachine) [IfMachineArray indexOfObject: strValue];
}


+(NSArray<NSNumber*>*) ifMachineArrayFromStringArray:(NSArray<NSString*>*) array
{
    NSMutableArray* enums = [[NSMutableArray alloc]init]; 
    for(NSString* enumValue in array){
        NSNumber* numberValue = [NSNumber numberWithInt:[ IfMachineHelper ifMachineFromString:enumValue]];
        [enums addObject:numberValue];
    }
    return [enums copy];
}

@end