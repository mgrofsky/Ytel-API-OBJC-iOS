//
//  BulkBuyNumberInput.m
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#import "BulkBuyNumberInput.h"

@implementation BulkBuyNumberInput

/**
* The capability the number supports.
*/
@synthesize numberType;

/**
* Specifies the area code for the returned list of available numbers. Only available for North American numbers.
*/
@synthesize areaCode;

/**
* A positive integer that tells how many number you want to buy at a time.
*/
@synthesize quantity;

/**
* Response type format xml or json
*/
@synthesize responseType;

/**
* If desired quantity is unavailable purchase what is available .
*/
@synthesize leftover;

-(id)init
{
    if (self = [super init])
    {
        self.responseType = @"json";
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