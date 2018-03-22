//
//  ViewAddressInput.h
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_VIEWADDRESSINPUT
#define APIMATIC_VIEWADDRESSINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol ViewAddressInput
@end

@interface ViewAddressInput : NSObject

/**
* The identifier of the address to be retrieved.
*/
@property NSString* addressid;

/**
* Response Type either json or xml
*/
@property NSString* responseType;

@end
#endif