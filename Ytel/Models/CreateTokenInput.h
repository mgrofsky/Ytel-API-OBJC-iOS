//
//  CreateTokenInput.h
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
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
* Your Ytel Account SID
*/
@property NSString* accountSid;

/**
* Your Ytel Token
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