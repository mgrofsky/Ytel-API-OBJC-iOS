//
//  ErrorModel.m
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#import "ErrorModel.h"

@implementation ErrorModel

/**
* TODO: Write general description for this method
*/
@synthesize code;

/**
* TODO: Write general description for this method
*/
@synthesize message;

/**
* TODO: Write general description for this method
*/
@synthesize moreInfo;



/**
* Key mappings for the json serialization and deserialization
*/
+(NSDictionary*) keyMap
{
    NSMutableDictionary* map = [[NSMutableDictionary alloc] init];
    [map addEntriesFromDictionary: @{
        @"Code": @"code",
        @"Message": @"message",
        @"MoreInfo": @"moreInfo"  
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