//
//  ViewLetterInput.h
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_VIEWLETTERINPUT
#define APIMATIC_VIEWLETTERINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol ViewLetterInput
@end

@interface ViewLetterInput : NSObject

/**
* The unique identifier for a letter object.
*/
@property NSString* lettersid;

/**
* Response Type either json or xml
*/
@property NSString* responseType;

@end
#endif