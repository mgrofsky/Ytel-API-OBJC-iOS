//
//  DeleteBouncesInput.m
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#import "DeleteBouncesInput.h"

@implementation DeleteBouncesInput

/**
* Response type format xml or json
*/
@synthesize responseType;

/**
* The email address to be remove from the bounced email list.
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