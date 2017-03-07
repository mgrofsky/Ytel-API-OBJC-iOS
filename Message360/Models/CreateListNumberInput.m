//
//  CreateListNumberInput.m
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#import "CreateListNumberInput.h"

@implementation CreateListNumberInput

/**
* Which page of the overall response will be returned. Zero indexed
*/
@synthesize page;

/**
* Number of individual resources listed in the response per page
*/
@synthesize pageSize;

/**
* TODO: Write general description for this method
*/
@synthesize numberType;

/**
* TODO: Write general description for this method
*/
@synthesize friendlyName;

/**
* Response type format xml or json
*/
@synthesize responseType;

-(id)init
{
    if (self = [super init])
    {
        self.pageSize = 10;
        self.responseType = @"json";
    }
    return self;
}

 /**
 * For serialization of enum NumberType type property as NSString*
 */
-(id) JSONObjectForNumberType
{
     
    return [NumberTypeHelper stringFromNumberType:(enum NumberType) numberType withDefault: nil];

}

/**
 * For deserialization of enum NumberType type property from NSString*
 */
 
-(void)setNumberTypeWithNSString:(NSString*) strValue
{
    numberType = [NumberTypeHelper numberTypeFromString:(NSString*) strValue];
}


@end