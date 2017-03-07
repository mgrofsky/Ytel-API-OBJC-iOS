//
//  CreateDeleteSubAccountInput.m
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#import "CreateDeleteSubAccountInput.h"

@implementation CreateDeleteSubAccountInput

/**
* The SubaccountSid to be deleted
*/
@synthesize subAccountSID;

/**
* 0 to delete or 1 to merge numbers to parent account.
*/
@synthesize mergeNumber;

/**
* Response type format xml or json
*/
@synthesize responseType;

-(id)init
{
    if (self = [super init])
    {
        self.mergeNumber = [MergeNumberStatusHelper mergeNumberStatusFromString:@"0"];
        self.responseType = @"json";
    }
    return self;
}

@end