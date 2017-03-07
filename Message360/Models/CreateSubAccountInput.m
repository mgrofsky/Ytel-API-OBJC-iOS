//
//  CreateSubAccountInput.m
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#import "CreateSubAccountInput.h"

@implementation CreateSubAccountInput

/**
* Sub account user first name
*/
@synthesize firstName;

/**
* sub account user last name
*/
@synthesize lastName;

/**
* Sub account email address
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