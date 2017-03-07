//
//  CreateAddressInput.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_CREATEADDRESSINPUT
#define APIMATIC_CREATEADDRESSINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol CreateAddressInput
@end

@interface CreateAddressInput : NSObject

/**
* Name of user
*/
@property NSString* name;

/**
* Address of user.
*/
@property NSString* address;

/**
* Must be a 2 letter country short-name code (ISO 3166)
*/
@property NSString* country;

/**
* Must be a 2 letter State eg. CA for US. For Some Countries it can be greater than 2 letters.
*/
@property NSString* state;

/**
* City Name.
*/
@property NSString* city;

/**
* Zip code of city.
*/
@property NSString* zip;

/**
* Description of addresses.
*/
@property NSString* description;

/**
* Email Id of user.
*/
@property NSString* email;

/**
* Phone number of user.
*/
@property NSString* phone;

/**
* Response type either json or xml
*/
@property NSString* responseType;

@end
#endif