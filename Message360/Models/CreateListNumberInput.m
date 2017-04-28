//
//  CreateListNumberInput.m
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#import "CreateListNumberInput.h"

@implementation CreateListNumberInput

/**
* Response type format xml or json
*/
@synthesize responseType;

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

-(id)init
{
    if (self = [super init])
    {
        self.responseType = @"json";
        self.pageSize = 10;
    }
    return self;
}

 /**
 * For serialization of enum NumberTypeEnum type property as NSString*
 */
-(id) JSONObjectForNumberType
{
     
    return [NumberTypeEnumHelper stringFromNumberTypeEnum:(enum NumberTypeEnum) numberType withDefault: nil];

}

/**
 * For deserialization of enum NumberTypeEnum type property from NSString*
 */
 
-(void)setNumberTypeWithNSString:(NSString*) strValue
{
    numberType = [NumberTypeEnumHelper numberTypeEnumFromString:(NSString*) strValue];
}


@end