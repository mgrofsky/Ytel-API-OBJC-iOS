//
//  DeleteAreaMailInput.h
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_DELETEAREAMAILINPUT
#define APIMATIC_DELETEAREAMAILINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol DeleteAreaMailInput
@end

@interface DeleteAreaMailInput : NSObject

/**
* The unique identifier for an AreaMail object.
*/
@property NSString* areamailid;

/**
* Response Type either json or xml
*/
@property NSString* responseType;

@end
#endif