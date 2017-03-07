//
//  CreateDeleteSubAccountInput.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_CREATEDELETESUBACCOUNTINPUT
#define APIMATIC_CREATEDELETESUBACCOUNTINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"

#import "MergeNumberStatus.h"
#import "MergeNumberStatusHelper.h"


//protocol defined for deserialization of JSON
@protocol CreateDeleteSubAccountInput
@end

@interface CreateDeleteSubAccountInput : NSObject

/**
* The SubaccountSid to be deleted
*/
@property NSString* subAccountSID;

/**
* 0 to delete or 1 to merge numbers to parent account.
*/
@property enum MergeNumberStatus mergeNumber;

/**
* Response type format xml or json
*/
@property NSString* responseType;

@end
#endif