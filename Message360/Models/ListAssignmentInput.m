//
//  ListAssignmentInput.m
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#import "ListAssignmentInput.h"

@implementation ListAssignmentInput

/**
* Response type format xml or json
*/
@synthesize responseType;

/**
* Which page of the overall response will be returned. Zero indexed
*/
@synthesize page;

/**
* Number of individual resources listed in the response per page
*/
@synthesize pageSize;

/**
* Only list keywords of shortcode
*/
@synthesize shortcode;

-(id)init
{
    if (self = [super init])
    {
        self.responseType = @"json";
        self.page = 1;
        self.pageSize = 10;
    }
    return self;
}

@end