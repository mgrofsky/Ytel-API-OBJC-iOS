//
//  CreateListBlocksInput.m
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#import "CreateListBlocksInput.h"

@implementation CreateListBlocksInput

/**
* Where to start in the output list
*/
@synthesize offset;

/**
* Maximum number of records to return
*/
@synthesize limit;

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