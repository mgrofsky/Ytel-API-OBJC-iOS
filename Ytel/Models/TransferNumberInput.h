//
//  TransferNumberInput.h
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_TRANSFERNUMBERINPUT
#define APIMATIC_TRANSFERNUMBERINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol TransferNumberInput
@end

@interface TransferNumberInput : NSObject

/**
* A valid 10-digit Ytel number (E.164 format).
*/
@property NSString* phonenumber;

/**
* A specific Accountsid from where Number is getting transfer.
*/
@property NSString* fromaccountsid;

/**
* A specific Accountsid to which Number is getting transfer.
*/
@property NSString* toaccountsid;

/**
* Response type format xml or json
*/
@property NSString* responseType;

@end
#endif