//
//  CreateSubAccountInput.h
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
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
* Descriptive name of the sub account
*/
@property NSString* friendlyName;

/**
* The password of the sub account.  Please make sure to make as password that is at least 8 characters long, contain a symbol, uppercase and a number.
*/
@property NSString* password;

/**
* Response type format xml or json
*/
@property NSString* responseType;

@end
#endif