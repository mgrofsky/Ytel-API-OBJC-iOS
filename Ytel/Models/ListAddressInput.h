//
//  ListAddressInput.h
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
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
* The page count to retrieve from the total results in the collection. Page indexing starts at 1.
*/
@property int page;

/**
* How many results to return, default is 10, max is 100, must be an integer
*/
@property int pagesize;

/**
* addresses Sid
*/
@property NSString* addressid;

/**
* date created address.
*/
@property NSString* dateCreated;

@end
#endif