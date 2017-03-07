//
//  ProductCode.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#include "ProductCodeHelper.h"

/**
* Helper class implementation for ProductCode to NSString conversion
*/
@implementation ProductCodeHelper

+(id) stringFromProductCode:(enum ProductCode) productCode withDefault: (id) defaultValue
{
    switch(productCode)
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

+(NSArray<NSString*>*) stringArrayFromProductCodeArray:(NSArray<NSNumber*>*) array
{
    NSMutableArray* enums = [[NSMutableArray alloc]init]; 
    for(NSNumber* numberValue in array){
        NSNumber* stringValue = [ProductCodeHelper stringFromProductCode:(enum ProductCode) numberValue.intValue withDefault:[NSNull null]];
        [enums addObject:stringValue];
    }
    return [enums copy];
}

+(enum ProductCode) productCodeFromString:(NSString*) strValue
{
    NSArray* ProductCodeArray = [NSArray arrayWithObjects:
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

    return (enum ProductCode) [ProductCodeArray indexOfObject: strValue];
}


+(NSArray<NSNumber*>*) productCodeArrayFromStringArray:(NSArray<NSString*>*) array
{
    NSMutableArray* enums = [[NSMutableArray alloc]init]; 
    for(NSString* enumValue in array){
        NSNumber* numberValue = [NSNumber numberWithInt:[ ProductCodeHelper productCodeFromString:enumValue]];
        [enums addObject:numberValue];
    }
    return [enums copy];
}

@end