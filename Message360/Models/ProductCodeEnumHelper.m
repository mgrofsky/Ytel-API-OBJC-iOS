//
//  ProductCodeEnum.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#include "ProductCodeEnumHelper.h"

/**
* Helper class implementation for ProductCodeEnum to NSString conversion
*/
@implementation ProductCodeEnumHelper

+(id) stringFromProductCodeEnum:(enum ProductCodeEnum) productCodeEnum withDefault: (id) defaultValue
{
    switch(productCodeEnum)
    {
        case ProductCodeALL:
            return @"0";

        case ProductCodeOutboundCall:
            return @"1";

        case ProductCodeInboundCall:
            return @"2";

        case ProductCodeOutboundSMS:
            return @"3";

        case ProductCodeInboundSMS:
            return @"4";

        case ProductCodeTranscription:
            return @"5";

        case ProductCodeEmail:
            return @"6";

        case ProductCodeConference:
            return @"7";

        case ProductCodeCarrier:
            return @"8";

        case ProductCodeNumberPurchased:
            return @"9";

        case ProductCodeDirectMailAreamail:
            return @"10";

        case ProductCodeDirectMailPostcard:
            return @"11";

        case ProductCodeDirectMailLetters:
            return @"12";

        case ProductCodeDirectMailVerifiedAddress:
            return @"13";

        default:
            return defaultValue;
    }
}

+(NSArray<NSString*>*) stringArrayFromProductCodeEnumArray:(NSArray<NSNumber*>*) array
{
    NSMutableArray* enums = [[NSMutableArray alloc]init]; 
    for(NSNumber* numberValue in array){
        NSNumber* stringValue = [ProductCodeEnumHelper stringFromProductCodeEnum:(enum ProductCodeEnum) numberValue.intValue withDefault:[NSNull null]];
        [enums addObject:stringValue];
    }
    return [enums copy];
}

+(enum ProductCodeEnum) productCodeEnumFromString:(NSString*) strValue
{
    NSArray* ProductCodeEnumArray = [NSArray arrayWithObjects:
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

    return (enum ProductCodeEnum) [ProductCodeEnumArray indexOfObject: strValue];
}


+(NSArray<NSNumber*>*) productCodeEnumArrayFromStringArray:(NSArray<NSString*>*) array
{
    NSMutableArray* enums = [[NSMutableArray alloc]init]; 
    for(NSString* enumValue in array){
        NSNumber* numberValue = [NSNumber numberWithInt:[ ProductCodeEnumHelper productCodeEnumFromString:enumValue]];
        [enums addObject:numberValue];
    }
    return [enums copy];
}

@end