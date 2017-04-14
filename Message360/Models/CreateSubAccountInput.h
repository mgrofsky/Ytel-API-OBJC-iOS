//
//  CreateSubAccountInput.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_CREATESUBACCOUNTINPUT
#define APIMATIC_CREATESUBACCOUNTINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol CreateSubAccountInput
@end

@interface CreateSubAccountInput : NSObject

/**
* Sub account user first name
*/
@property NSString* firstName;

/**
* sub account user last name
*/
@property NSString* lastName;

/**
* Sub account email address
*/
@property NSString* email;

/**
* Response type format xml or json
*/
@property NSString* responseType;

@end
#endif