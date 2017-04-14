//
//  CreateCheckFundsInput.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_CREATECHECKFUNDSINPUT
#define APIMATIC_CREATECHECKFUNDSINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol CreateCheckFundsInput
@end

@interface CreateCheckFundsInput : NSObject

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