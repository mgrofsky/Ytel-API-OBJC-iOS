//
//  CheckFundsInput.h
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
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
* Your Ytel Account SID
*/
@property NSString* accountSid;

/**
* Your Ytel Token
*/
@property NSString* authToken;

@end
#endif