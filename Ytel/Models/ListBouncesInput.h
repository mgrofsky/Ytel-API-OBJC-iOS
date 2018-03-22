//
//  ListBouncesInput.h
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_LISTBOUNCESINPUT
#define APIMATIC_LISTBOUNCESINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol ListBouncesInput
@end

@interface ListBouncesInput : NSObject

/**
* Response type format xml or json
*/
@property NSString* responseType;

/**
* The starting point of the list of bounced emails that should be returned.
*/
@property NSString* offset;

/**
* The count of results that should be returned.
*/
@property NSString* limit;

@end
#endif