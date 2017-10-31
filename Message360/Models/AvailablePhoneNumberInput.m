//
//  AvailablePhoneNumberInput.m
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#import "AvailablePhoneNumberInput.h"

@implementation AvailablePhoneNumberInput

/**
* Number type either SMS,Voice or all
*/
@synthesize numberType;

/**
* Phone Number Area Code
*/
@synthesize areaCode;

/**
* Response type format xml or json
*/
@synthesize responseType;

/**
* Page Size
*/
@synthesize pageSize;

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