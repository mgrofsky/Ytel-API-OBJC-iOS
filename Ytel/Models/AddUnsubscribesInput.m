//
//  AddUnsubscribesInput.m
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#import "AddUnsubscribesInput.h"

@implementation AddUnsubscribesInput

/**
* A valid email address that is to be added to the unsubscribe list
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