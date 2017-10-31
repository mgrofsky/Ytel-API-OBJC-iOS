//
//  DeleteUnsubscribesInput.m
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#import "DeleteUnsubscribesInput.h"

@implementation DeleteUnsubscribesInput

/**
* The email to remove from the unsubscribe list
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