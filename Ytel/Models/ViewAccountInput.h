//
//  ViewAccountInput.h
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_VIEWACCOUNTINPUT
#define APIMATIC_VIEWACCOUNTINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol ViewAccountInput
@end

@interface ViewAccountInput : NSObject

/**
* Filter account information based on date.
*/
@property NSString* date;

/**
* Response type format xml or json
*/
@property NSString* responseType;

@end
#endif