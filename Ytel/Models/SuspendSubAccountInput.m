//
//  SuspendSubAccountInput.m
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#import "SuspendSubAccountInput.h"

@implementation SuspendSubAccountInput

/**
* The SubaccountSid to be activated or suspended
*/
@synthesize subAccountSID;

/**
* 0 to suspend or 1 to activate
*/
@synthesize activate;

/**
* TODO: Write general description for this method
*/
@synthesize responseType;

-(id)init
{
    if (self = [super init])
    {
        self.activate = [ActivateStatusEnumHelper activateStatusEnumFromString:@"0"];
        self.responseType = @"json";
    }
    return self;
}

@end