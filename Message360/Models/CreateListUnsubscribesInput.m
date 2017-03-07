//
//  CreateListUnsubscribesInput.m
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#import "CreateListUnsubscribesInput.h"

@implementation CreateListUnsubscribesInput

/**
* Response type format xml or json
*/
@synthesize responseType;

/**
* Starting record of the list
*/
@synthesize offset;

/**
* Maximum number of records to be returned
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