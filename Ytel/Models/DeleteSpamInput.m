//
//  DeleteSpamInput.m
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#import "DeleteSpamInput.h"

@implementation DeleteSpamInput

/**
* Response type format xml or json
*/
@synthesize responseType;

/**
* A valid email address that is to be remove from the spam list.
*/
@synthesize email;

-(id)init
{
    if (self = [super init])
    {
        self.responseType = @"json";
    }
    return self;
}

@end