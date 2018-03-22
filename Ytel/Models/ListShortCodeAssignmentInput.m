//
//  ListShortCodeAssignmentInput.m
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#import "ListShortCodeAssignmentInput.h"

@implementation ListShortCodeAssignmentInput

/**
* Response type format xml or json
*/
@synthesize responseType;

/**
* Only list Short Code Assignment sent from this Short Code
*/
@synthesize shortcode;

/**
* The page count to retrieve from the total results in the collection. Page indexing starts at 1.
*/
@synthesize page;

/**
* The count of objects to return per page.
*/
@synthesize pagesize;

-(id)init
{
    if (self = [super init])
    {
        self.responseType = @"json";
    }
    return self;
}

@end