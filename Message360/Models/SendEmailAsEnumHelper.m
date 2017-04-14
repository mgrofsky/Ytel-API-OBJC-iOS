//
//  SendEmailAsEnum.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#include "SendEmailAsEnumHelper.h"

/**
* Helper class implementation for SendEmailAsEnum to NSString conversion
*/
@implementation SendEmailAsEnumHelper

+(id) stringFromSendEmailAsEnum:(enum SendEmailAsEnum) sendEmailAsEnum withDefault: (id) defaultValue
{
    switch(sendEmailAsEnum)
    {
        case SendEmailAsTEXT:
            return @"text";

        case SendEmailAsHTML:
            return @"html";

        default:
            return defaultValue;
    }
}

+(NSArray<NSString*>*) stringArrayFromSendEmailAsEnumArray:(NSArray<NSNumber*>*) array
{
    NSMutableArray* enums = [[NSMutableArray alloc]init]; 
    for(NSNumber* numberValue in array){
        NSNumber* stringValue = [SendEmailAsEnumHelper stringFromSendEmailAsEnum:(enum SendEmailAsEnum) numberValue.intValue withDefault:[NSNull null]];
        [enums addObject:stringValue];
    }
    return [enums copy];
}

+(enum SendEmailAsEnum) sendEmailAsEnumFromString:(NSString*) strValue
{
    NSArray* SendEmailAsEnumArray = [NSArray arrayWithObjects:
                                        @"text",
                                        @"html",
                                        nil];

    return (enum SendEmailAsEnum) [SendEmailAsEnumArray indexOfObject: strValue];
}


+(NSArray<NSNumber*>*) sendEmailAsEnumArrayFromStringArray:(NSArray<NSString*>*) array
{
    NSMutableArray* enums = [[NSMutableArray alloc]init]; 
    for(NSString* enumValue in array){
        NSNumber* numberValue = [NSNumber numberWithInt:[ SendEmailAsEnumHelper sendEmailAsEnumFromString:enumValue]];
        [enums addObject:numberValue];
    }
    return [enums copy];
}

@end