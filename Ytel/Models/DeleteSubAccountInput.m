//
//  DeleteSubAccountInput.m
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#import "DeleteSubAccountInput.h"

@implementation DeleteSubAccountInput

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
        self.mergeNumber = [MergeNumberStatusEnumHelper mergeNumberStatusEnumFromString:@"0"];
        self.responseType = @"json";
    }
    return self;
}

@end