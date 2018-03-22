//
//  AvailablePhoneNumberInput.m
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#import "AvailablePhoneNumberInput.h"

@implementation AvailablePhoneNumberInput

/**
* Number type either SMS,Voice or all
*/
@synthesize numbertype;

/**
* Specifies the area code for the returned list of available numbers. Only available for North American numbers.
*/
@synthesize areacode;

/**
* Response type format xml or json
*/
@synthesize responseType;

/**
* The count of objects to return.
*/
@synthesize pagesize;

-(id)init
{
    if (self = [super init])
    {
        self.responseType = @"json";
        self.pagesize = 10;
    }
    return self;
}

 /**
 * For serialization of enum NumberTypeEnum type property as NSString*
 */
-(id) JSONObjectForNumbertype
{
     
    return [NumberTypeEnumHelper stringFromNumberTypeEnum:(enum NumberTypeEnum) numbertype withDefault: nil];

}

/**
 * For deserialization of enum NumberTypeEnum type property from NSString*
 */
 
-(void)setNumbertypeWithNSString:(NSString*) strValue
{
    numbertype = [NumberTypeEnumHelper numberTypeEnumFromString:(NSString*) strValue];
}


@end