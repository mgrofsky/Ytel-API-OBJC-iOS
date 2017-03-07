//
//  CreateListInvalidInput.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_CREATELISTINVALIDINPUT
#define APIMATIC_CREATELISTINVALIDINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol CreateListInvalidInput
@end

@interface CreateListInvalidInput : NSObject

/**
* Response type format xml or json
*/
@property NSString* responseType;

/**
* Starting record for listing out emails
*/
@property NSString* offet;

/**
* Maximum number of records to return
*/
@property NSString* limit;

@end
#endif