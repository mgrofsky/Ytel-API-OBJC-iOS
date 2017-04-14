//
//  CreateViewShortCodeInput.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_CREATEVIEWSHORTCODEINPUT
#define APIMATIC_CREATEVIEWSHORTCODEINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol CreateViewShortCodeInput
@end

@interface CreateViewShortCodeInput : NSObject

/**
* Message sid
*/
@property NSString* messagesid;

/**
* Response type format xml or json
*/
@property NSString* responseType;

@end
#endif