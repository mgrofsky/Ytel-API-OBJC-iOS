//
//  CheckFundsInput.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_CHECKFUNDSINPUT
#define APIMATIC_CHECKFUNDSINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol CheckFundsInput
@end

@interface CheckFundsInput : NSObject

/**
* Your message360 Account SID
*/
@property NSString* accountSid;

/**
* Your message360 Token
*/
@property NSString* authToken;

@end
#endif