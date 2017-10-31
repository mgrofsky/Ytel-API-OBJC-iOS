//
//  ListUsageInput.m
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#import "ListUsageInput.h"

@implementation ListUsageInput

/**
* Response type format xml or json
*/
@synthesize responseType;

/**
* Product Code
*/
@synthesize productCode;

/**
* Start Usage Date
*/
@synthesize startDate;

/**
* End Usage Date
*/
@synthesize endDate;

-(id)init
{
    if (self = [super init])
    {
        self.responseType = @"json";
        self.productCode = [ProductCodeEnumHelper productCodeEnumFromString:@"0"];
        self.startDate = @"2016-09-06";
        self.endDate = @"2016-09-06";
    }
    return self;
}

@end