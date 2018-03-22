//
//  TransferNumberInput.m
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#import "TransferNumberInput.h"

@implementation TransferNumberInput

/**
* A valid 10-digit Ytel number (E.164 format).
*/
@synthesize phonenumber;

/**
* A specific Accountsid from where Number is getting transfer.
*/
@synthesize fromaccountsid;

/**
* A specific Accountsid to which Number is getting transfer.
*/
@synthesize toaccountsid;

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