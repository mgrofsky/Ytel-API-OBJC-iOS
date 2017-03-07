//
//  InterruptedCallStatus.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#include "InterruptedCallStatusHelper.h"

/**
* Helper class implementation for InterruptedCallStatus to NSString conversion
*/
@implementation InterruptedCallStatusHelper

+(id) stringFromInterruptedCallStatus:(enum InterruptedCallStatus) interruptedCallStatus withDefault: (id) defaultValue
{
    switch(interruptedCallStatus)
    {
        case InterruptedCallStatusCANCELED:
            return @"canceled";

        case InterruptedCallStatusCOMPLETED:
            return @"completed";

        default:
            return defaultValue;
    }
}

+(NSArray<NSString*>*) stringArrayFromInterruptedCallStatusArray:(NSArray<NSNumber*>*) array
{
    NSMutableArray* enums = [[NSMutableArray alloc]init]; 
    for(NSNumber* numberValue in array){
        NSNumber* stringValue = [InterruptedCallStatusHelper stringFromInterruptedCallStatus:(enum InterruptedCallStatus) numberValue.intValue withDefault:[NSNull null]];
        [enums addObject:stringValue];
    }
    return [enums copy];
}

+(enum InterruptedCallStatus) interruptedCallStatusFromString:(NSString*) strValue
{
    NSArray* InterruptedCallStatusArray = [NSArray arrayWithObjects:
                                        @"canceled",
                                        @"completed",
                                        nil];

    return (enum InterruptedCallStatus) [InterruptedCallStatusArray indexOfObject: strValue];
}


+(NSArray<NSNumber*>*) interruptedCallStatusArrayFromStringArray:(NSArray<NSString*>*) array
{
    NSMutableArray* enums = [[NSMutableArray alloc]init]; 
    for(NSString* enumValue in array){
        NSNumber* numberValue = [NSNumber numberWithInt:[ InterruptedCallStatusHelper interruptedCallStatusFromString:enumValue]];
        [enums addObject:numberValue];
    }
    return [enums copy];
}

@end