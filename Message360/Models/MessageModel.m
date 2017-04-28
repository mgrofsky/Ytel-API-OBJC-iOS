//
//  MessageModel.m
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#import "MessageModel.h"

@implementation MessageModel

/**
* TODO: Write general description for this method
*/
@synthesize apiVersion;

/**
* TODO: Write general description for this method
*/
@synthesize messageSid;

/**
* TODO: Write general description for this method
*/
@synthesize from;

/**
* TODO: Write general description for this method
*/
@synthesize to;

/**
* TODO: Write general description for this method
*/
@synthesize messagePrice;

/**
* TODO: Write general description for this method
*/
@synthesize body;

/**
* TODO: Write general description for this method
*/
@synthesize dateSent;

/**
* TODO: Write general description for this method
*/
@synthesize status;

/**
* TODO: Write general description for this method
*/
@synthesize templateId;

/**
* TODO: Write general description for this method
*/
@synthesize templateData;



/**
* Key mappings for the json serialization and deserialization
*/
+(NSDictionary*) keyMap
{
    NSMutableDictionary* map = [[NSMutableDictionary alloc] init];
    [map addEntriesFromDictionary: @{
        @"ApiVersion": @"apiVersion",
        @"MessageSid": @"messageSid",
        @"From": @"from",
        @"To": @"to",
        @"MessagePrice": @"messagePrice",
        @"Body": @"body",
        @"DateSent": @"dateSent",
        @"Status": @"status",
        @"TemplateId": @"templateId",
        @"TemplateData": @"templateData"  
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