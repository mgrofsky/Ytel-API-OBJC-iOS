//
//  ListUsageInput.m
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#import "ListUsageInput.h"

@implementation ListUsageInput

/**
* Response type format xml or json
*/
@synthesize responseType;

/**
* Filter usage results by product type.
*/
@synthesize productCode;

/**
* Filter usage objects by start date.
*/
@synthesize startDate;

/**
* Filter usage objects by end date.
*/
@synthesize endDate;

/**
* Will include all subaccount usage data
*/
@synthesize includeSubAccounts;

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