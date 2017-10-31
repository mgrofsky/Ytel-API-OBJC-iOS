//
//  DeleteSubAccountInput.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_DELETESUBACCOUNTINPUT
#define APIMATIC_DELETESUBACCOUNTINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"

#import "MergeNumberStatusEnum.h"
#import "MergeNumberStatusEnumHelper.h"


//protocol defined for deserialization of JSON
@protocol DeleteSubAccountInput
@end

@interface DeleteSubAccountInput : NSObject

/**
* The SubaccountSid to be deleted
*/
@property NSString* subAccountSID;

/**
* 0 to delete or 1 to merge numbers to parent account.
*/
@property enum MergeNumberStatusEnum mergeNumber;

/**
* Response type format xml or json
*/
@property NSString* responseType;

@end
#endif