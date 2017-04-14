//
//  CreateAddressInput.m
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#import "CreateAddressInput.h"

@implementation CreateAddressInput

/**
* Name of user
*/
@synthesize name;

/**
* Address of user.
*/
@synthesize address;

/**
* Must be a 2 letter country short-name code (ISO 3166)
*/
@synthesize country;

/**
* Must be a 2 letter State eg. CA for US. For Some Countries it can be greater than 2 letters.
*/
@synthesize state;

/**
* City Name.
*/
@synthesize city;

/**
* Zip code of city.
*/
@synthesize zip;

/**
* Description of addresses.
*/
@synthesize description;

/**
* Email Id of user.
*/
@synthesize email;

/**
* Phone number of user.
*/
@synthesize phone;

/**
* Response type either json or xml
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