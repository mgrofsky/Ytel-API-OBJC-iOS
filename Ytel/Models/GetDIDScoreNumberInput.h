//
//  GetDIDScoreNumberInput.h
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_GETDIDSCORENUMBERINPUT
#define APIMATIC_GETDIDSCORENUMBERINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol GetDIDScoreNumberInput
@end

@interface GetDIDScoreNumberInput : NSObject

/**
* Specifies the multiple phone numbers for check updated spamscore .
*/
@property NSString* phonenumber;

/**
* Response type format xml or json
*/
@property NSString* responseType;

@end
#endif