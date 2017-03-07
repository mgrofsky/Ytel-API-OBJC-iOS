//
//  CreateSuspendSubAccountInput.m
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#import "CreateSuspendSubAccountInput.h"

@implementation CreateSuspendSubAccountInput

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
        self.activate = [ActivateStatusHelper activateStatusFromString:@"0"];
    }
    return self;
}

@end