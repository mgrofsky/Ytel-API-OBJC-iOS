//
//  DeletePostcardInput.h
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_DELETEPOSTCARDINPUT
#define APIMATIC_DELETEPOSTCARDINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol DeletePostcardInput
@end

@interface DeletePostcardInput : NSObject

/**
* The unique identifier of a postcard object.
*/
@property NSString* postcardid;

/**
* Response Type either json or xml
*/
@property NSString* responseType;

@end
#endif