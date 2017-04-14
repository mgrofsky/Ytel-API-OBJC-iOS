//
//  CreateTokenInput.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_CREATETOKENINPUT
#define APIMATIC_CREATETOKENINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol CreateTokenInput
@end

@interface CreateTokenInput : NSObject

/**
* Your message360 Account SID
*/
@property NSString* accountSid;

/**
* Your message360 Token
*/
@property NSString* authToken;

/**
* WebRTC username authentication
*/
@property NSString* username;

/**
* WebRTC password authentication
*/
@property NSString* password;

@end
#endif