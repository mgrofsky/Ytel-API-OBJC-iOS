//
//  DeleteInvalidInput.m
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#import "DeleteInvalidInput.h"

@implementation DeleteInvalidInput

/**
* Email that was marked invalid
*/
@synthesize email;

/**
* Json or xml
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