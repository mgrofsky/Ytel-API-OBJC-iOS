//
//  NumberTypeEnum.h
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#include "NumberTypeEnumHelper.h"

/**
* Helper class implementation for NumberTypeEnum to NSString conversion
*/
@implementation NumberTypeEnumHelper

+(id) stringFromNumberTypeEnum:(enum NumberTypeEnum) numberTypeEnum withDefault: (id) defaultValue
{
    switch(numberTypeEnum)
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

+(NSArray<NSString*>*) stringArrayFromNumberTypeEnumArray:(NSArray<NSNumber*>*) array
{
    NSMutableArray* enums = [[NSMutableArray alloc]init]; 
    for(NSNumber* numberValue in array){
        NSNumber* stringValue = [NumberTypeEnumHelper stringFromNumberTypeEnum:(enum NumberTypeEnum) numberValue.intValue withDefault:[NSNull null]];
        [enums addObject:stringValue];
    }
    return [enums copy];
}

+(enum NumberTypeEnum) numberTypeEnumFromString:(NSString*) strValue
{
    NSArray* NumberTypeEnumArray = [NSArray arrayWithObjects:
                                        @"all",
                                        @"voice",
                                        @"sms",
                                        nil];

    return (enum NumberTypeEnum) [NumberTypeEnumArray indexOfObject: strValue];
}


+(NSArray<NSNumber*>*) numberTypeEnumArrayFromStringArray:(NSArray<NSString*>*) array
{
    NSMutableArray* enums = [[NSMutableArray alloc]init]; 
    for(NSString* enumValue in array){
        NSNumber* numberValue = [NSNumber numberWithInt:[ NumberTypeEnumHelper numberTypeEnumFromString:enumValue]];
        [enums addObject:numberValue];
    }
    return [enums copy];
}

@end