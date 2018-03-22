//
//  ListNumberInput.m
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#import "ListNumberInput.h"

@implementation ListNumberInput

/**
* Response type format xml or json
*/
@synthesize responseType;

/**
* Which page of the overall response will be returned. Page indexing starts at 1.
*/
@synthesize page;

/**
* The page count to retrieve from the total results in the collection. Page indexing starts at 1.
*/
@synthesize pageSize;

/**
* The capability supported by the number.Number type either SMS,Voice or all
*/
@synthesize numberType;

/**
* A human-readable label added to the number object.
*/
@synthesize friendlyName;

-(id)init
{
    if (self = [super init])
    {
        self.responseType = @"json";
        self.page = 1;
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