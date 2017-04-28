//
//  Message360Model.m
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#import "Message360Model.h"

@implementation Message360Model

/**
* TODO: Write general description for this method
*/
@synthesize responseStatus;

/**
* TODO: Write general description for this method
*/
@synthesize messageCount;

/**
* TODO: Write general description for this method
*/
@synthesize message;



/**
* Key mappings for the json serialization and deserialization
*/
+(NSDictionary*) keyMap
{
    NSMutableDictionary* map = [[NSMutableDictionary alloc] init];
    [map addEntriesFromDictionary: @{
        @"ResponseStatus": @"responseStatus",
        @"MessageCount": @"messageCount",
        @"Message": @"message"  
    }];

    return map;
}

/**
* Key mapper for json serialization and deserialization
*/
+(JSONKeyMapper*) keyMapper
{ 
  return [[JSONKeyMapper alloc] initWithDictionary: [self keyMap]];
}

/**
* Helps avoiding deserialization errors when one or more properties are missing
* @returns	True, indicating that all properties are optional for deserialization
*/
+(BOOL)propertyIsOptional:(NSString*) propertyName
{
    return YES;
}

@end