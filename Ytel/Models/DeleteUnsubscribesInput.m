//
//  DeleteUnsubscribesInput.m
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#import "DeleteUnsubscribesInput.h"

@implementation DeleteUnsubscribesInput

/**
* A valid email address that is to be remove from the unsubscribe list.
*/
@synthesize email;

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