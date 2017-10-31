//
//  ListAddressInput.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_LISTADDRESSINPUT
#define APIMATIC_LISTADDRESSINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol ListAddressInput
@end

@interface ListAddressInput : NSObject

/**
* Response Type either json or xml
*/
@property NSString* responseType;

/**
* Return requested # of items starting the value, default=0, must be an integer
*/
@property int page;

/**
* How many results to return, default is 10, max is 100, must be an integer
*/
@property int pageSize;

/**
* addresses Sid
*/
@property NSString* addressSID;

/**
* date created address.
*/
@property NSString* dateCreated;

@end
#endif