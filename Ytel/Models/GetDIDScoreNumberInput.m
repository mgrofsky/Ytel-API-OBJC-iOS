//
//  GetDIDScoreNumberInput.m
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#import "GetDIDScoreNumberInput.h"

@implementation GetDIDScoreNumberInput

/**
* Specifies the multiple phone numbers for check updated spamscore .
*/
@synthesize phonenumber;

/**
* Response type format xml or json
*/
@synthesize responseType;

-(id)init
{
    if (self = [super init])
    {
        self.responseType = @"json";
    }
    return self;
}

@end