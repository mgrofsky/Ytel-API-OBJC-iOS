//
//  SuspendSubAccountInput.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_SUSPENDSUBACCOUNTINPUT
#define APIMATIC_SUSPENDSUBACCOUNTINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"

#import "ActivateStatusEnum.h"
#import "ActivateStatusEnumHelper.h"


//protocol defined for deserialization of JSON
@protocol SuspendSubAccountInput
@end

@interface SuspendSubAccountInput : NSObject

/**
* The SubaccountSid to be activated or suspended
*/
@property NSString* subAccountSID;

/**
* 0 to suspend or 1 to activate
*/
@property enum ActivateStatusEnum activate;

/**
* TODO: Write general description for this field
*/
@property NSString* responseType;

@end
#endif