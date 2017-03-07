//
//  NumberType.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#include "NumberTypeHelper.h"

/**
* Helper class implementation for NumberType to NSString conversion
*/
@implementation NumberTypeHelper

+(id) stringFromNumberType:(enum NumberType) numberType withDefault: (id) defaultValue
{
    switch(numberType)
    {
        case NumberTypeALL:
            return @"all";

        case NumberTypeVoice:
            return @"voice";

        case NumberTypeSMS:
            return @"sms";

        default:
            return defaultValue;
    }
}

+(NSArray<NSString*>*) stringArrayFromNumberTypeArray:(NSArray<NSNumber*>*) array
{
    NSMutableArray* enums = [[NSMutableArray alloc]init]; 
    for(NSNumber* numberValue in array){
        NSNumber* stringValue = [NumberTypeHelper stringFromNumberType:(enum NumberType) numberValue.intValue withDefault:[NSNull null]];
        [enums addObject:stringValue];
    }
    return [enums copy];
}

+(enum NumberType) numberTypeFromString:(NSString*) strValue
{
    NSArray* NumberTypeArray = [NSArray arrayWithObjects:
                                        @"all",
                                        @"voice",
                                        @"sms",
                                        nil];

    return (enum NumberType) [NumberTypeArray indexOfObject: strValue];
}


+(NSArray<NSNumber*>*) numberTypeArrayFromStringArray:(NSArray<NSString*>*) array
{
    NSMutableArray* enums = [[NSMutableArray alloc]init]; 
    for(NSString* enumValue in array){
        NSNumber* numberValue = [NSNumber numberWithInt:[ NumberTypeHelper numberTypeFromString:enumValue]];
        [enums addObject:numberValue];
    }
    return [enums copy];
}

@end