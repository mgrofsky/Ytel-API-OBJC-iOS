//
//  YtelAPIV3
//
//  This file was automatically generated by APIMATIC v2.0 ( https://apimatic.io ).
//
#include "ProductCode30EnumHelper.h"

/**
* Helper class implementation for ProductCode30Enum to NSString conversion
*/
@implementation ProductCode30EnumHelper

+(id) stringFromProductCode30Enum:(enum ProductCode30Enum) productCode30Enum withDefault: (id) defaultValue
{
    switch(productCode30Enum)
    {
        case ProductCode30ALL:
            return @"0";

        case ProductCode30Enum1:
            return @"1";

        case ProductCode30Enum2:
            return @"2";

        case ProductCode30Enum3:
            return @"3";

        case ProductCode30Enum4:
            return @"4";

        case ProductCode30Transcription:
            return @"5";

        case ProductCode30Email:
            return @"6";

        case ProductCode30Conference:
            return @"7";

        case ProductCode30Carrier:
            return @"8";

        case ProductCode30Enum9:
            return @"9";

        case ProductCode30Enum10:
            return @"10";

        case ProductCode30Enum11:
            return @"11";

        case ProductCode30Enum12:
            return @"12";

        case ProductCode30Enum13:
            return @"13";

        default:
            return defaultValue;
    }
}

+(NSArray<NSString*>*) stringArrayFromProductCode30EnumArray:(NSArray<NSNumber*>*) array
{
    NSMutableArray* enums = [[NSMutableArray alloc]init]; 
    for(NSNumber* numberValue in array){
        NSNumber* stringValue = [ProductCode30EnumHelper stringFromProductCode30Enum:(enum ProductCode30Enum) numberValue.intValue withDefault:[NSNull null]];
        [enums addObject:stringValue];
    }
    return [enums copy];
}

+(enum ProductCode30Enum) productCode30EnumFromString:(NSString*) strValue
{
    NSArray* ProductCode30EnumArray = [NSArray arrayWithObjects:
                                        @"0",
                                        @"1",
                                        @"2",
                                        @"3",
                                        @"4",
                                        @"5",
                                        @"6",
                                        @"7",
                                        @"8",
                                        @"9",
                                        @"10",
                                        @"11",
                                        @"12",
                                        @"13",
                                        nil];

    return (enum ProductCode30Enum) [ProductCode30EnumArray indexOfObject: strValue];
}


+(NSArray<NSNumber*>*) productCode30EnumArrayFromStringArray:(NSArray<NSString*>*) array
{
    NSMutableArray* enums = [[NSMutableArray alloc]init]; 
    for(NSString* enumValue in array){
        NSNumber* numberValue = [NSNumber numberWithInt:[ ProductCode30EnumHelper productCode30EnumFromString:enumValue]];
        [enums addObject:numberValue];
    }
    return [enums copy];
}

@end