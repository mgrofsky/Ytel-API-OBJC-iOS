//
//  CreateListInvalidInput.m
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#import "CreateListInvalidInput.h"

@implementation CreateListInvalidInput

/**
* Response type format xml or json
*/
@synthesize responseType;

/**
* Starting record for listing out emails
*/
@synthesize offet;

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