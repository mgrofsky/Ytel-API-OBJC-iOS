//
//  ListBlocksInput.m
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#import "ListBlocksInput.h"

@implementation ListBlocksInput

/**
* Response type format xml or json
*/
@synthesize responseType;

/**
* Where to start in the output list
*/
@synthesize offset;

/**
* Maximum number of records to return
*/
@synthesize limit;

-(id)init
{
    if (self = [super init])
    {
        self.responseType = @"json";
    }
    return self;
}

@end