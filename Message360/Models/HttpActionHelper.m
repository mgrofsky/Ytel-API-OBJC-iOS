//
//  HttpAction.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#include "HttpActionHelper.h"

/**
* Helper class implementation for HttpAction to NSString conversion
*/
@implementation HttpActionHelper

+(id) stringFromHttpAction:(enum HttpAction) httpAction withDefault: (id) defaultValue
{
    switch(httpAction)
    {
        case HttpActionGET:
            return @"GET";

        case HttpActionPOST:
            return @"POST";

        default:
            return defaultValue;
    }
}

+(NSArray<NSString*>*) stringArrayFromHttpActionArray:(NSArray<NSNumber*>*) array
{
    NSMutableArray* enums = [[NSMutableArray alloc]init]; 
    for(NSNumber* numberValue in array){
        NSNumber* stringValue = [HttpActionHelper stringFromHttpAction:(enum HttpAction) numberValue.intValue withDefault:[NSNull null]];
        [enums addObject:stringValue];
    }
    return [enums copy];
}

+(enum HttpAction) httpActionFromString:(NSString*) strValue
{
    NSArray* HttpActionArray = [NSArray arrayWithObjects:
                                        @"GET",
                                        @"POST",
                                        nil];

    return (enum HttpAction) [HttpActionArray indexOfObject: strValue];
}


+(NSArray<NSNumber*>*) httpActionArrayFromStringArray:(NSArray<NSString*>*) array
{
    NSMutableArray* enums = [[NSMutableArray alloc]init]; 
    for(NSString* enumValue in array){
        NSNumber* numberValue = [NSNumber numberWithInt:[ HttpActionHelper httpActionFromString:enumValue]];
        [enums addObject:numberValue];
    }
    return [enums copy];
}

@end