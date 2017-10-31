//
//  DeleteBouncesInput.m
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#import "DeleteBouncesInput.h"

@implementation DeleteBouncesInput

/**
* Response type format xml or json
*/
@synthesize responseType;

/**
* The email address to remove from the bounce list
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