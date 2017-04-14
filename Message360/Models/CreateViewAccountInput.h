//
//  CreateViewAccountInput.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_CREATEVIEWACCOUNTINPUT
#define APIMATIC_CREATEVIEWACCOUNTINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol CreateViewAccountInput
@end

@interface CreateViewAccountInput : NSObject

/**
* TODO: Write general description for this field
*/
@property NSString* date;

/**
* Response type format xml or json
*/
@property NSString* responseType;

@end
#endif