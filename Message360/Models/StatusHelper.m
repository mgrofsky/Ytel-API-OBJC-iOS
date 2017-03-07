//
//  Status.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#include "StatusHelper.h"

/**
* Helper class implementation for Status to NSString conversion
*/
@implementation StatusHelper

+(id) stringFromStatus:(enum Status) status withDefault: (id) defaultValue
{
    switch(status)
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

+(NSArray<NSString*>*) stringArrayFromStatusArray:(NSArray<NSNumber*>*) array
{
    NSMutableArray* enums = [[NSMutableArray alloc]init]; 
    for(NSNumber* numberValue in array){
        NSNumber* stringValue = [StatusHelper stringFromStatus:(enum Status) numberValue.intValue withDefault:[NSNull null]];
        [enums addObject:stringValue];
    }
    return [enums copy];
}

+(enum Status) statusFromString:(NSString*) strValue
{
    NSArray* StatusArray = [NSArray arrayWithObjects:
                                        @"inprogress",
                                        @"success",
                                        @"failure",
                                        nil];

    return (enum Status) [StatusArray indexOfObject: strValue];
}


+(NSArray<NSNumber*>*) statusArrayFromStringArray:(NSArray<NSString*>*) array
{
    NSMutableArray* enums = [[NSMutableArray alloc]init]; 
    for(NSString* enumValue in array){
        NSNumber* numberValue = [NSNumber numberWithInt:[ StatusHelper statusFromString:enumValue]];
        [enums addObject:numberValue];
    }
    return [enums copy];
}

@end