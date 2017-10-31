//
//  ListConferenceInput.m
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#import "ListConferenceInput.h"

@implementation ListConferenceInput

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
* Only return conferences with the specified FriendlyName
*/
@synthesize friendlyName;

/**
* Conference created date
*/
@synthesize dateCreated;

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