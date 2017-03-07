//
//  SendEmailAs.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#include "SendEmailAsHelper.h"

/**
* Helper class implementation for SendEmailAs to NSString conversion
*/
@implementation SendEmailAsHelper

+(id) stringFromSendEmailAs:(enum SendEmailAs) sendEmailAs withDefault: (id) defaultValue
{
    switch(sendEmailAs)
    {
        case SendEmailAsTEXT:
            return @"text";

        case SendEmailAsHTML:
            return @"html";

        default:
            return defaultValue;
    }
}

+(NSArray<NSString*>*) stringArrayFromSendEmailAsArray:(NSArray<NSNumber*>*) array
{
    NSMutableArray* enums = [[NSMutableArray alloc]init]; 
    for(NSNumber* numberValue in array){
        NSNumber* stringValue = [SendEmailAsHelper stringFromSendEmailAs:(enum SendEmailAs) numberValue.intValue withDefault:[NSNull null]];
        [enums addObject:stringValue];
    }
    return [enums copy];
}

+(enum SendEmailAs) sendEmailAsFromString:(NSString*) strValue
{
    NSArray* SendEmailAsArray = [NSArray arrayWithObjects:
                                        @"text",
                                        @"html",
                                        nil];

    return (enum SendEmailAs) [SendEmailAsArray indexOfObject: strValue];
}


+(NSArray<NSNumber*>*) sendEmailAsArrayFromStringArray:(NSArray<NSString*>*) array
{
    NSMutableArray* enums = [[NSMutableArray alloc]init]; 
    for(NSString* enumValue in array){
        NSNumber* numberValue = [NSNumber numberWithInt:[ SendEmailAsHelper sendEmailAsFromString:enumValue]];
        [enums addObject:numberValue];
    }
    return [enums copy];
}

@end