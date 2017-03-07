//
//  CreateListSpamInput.m
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#import "CreateListSpamInput.h"

@implementation CreateListSpamInput

/**
* Response type format xml or json
*/
@synthesize responseType;

/**
* The record number to start the list at
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