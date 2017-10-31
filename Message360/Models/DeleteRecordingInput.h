//
//  DeleteRecordingInput.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_DELETERECORDINGINPUT
#define APIMATIC_DELETERECORDINGINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol DeleteRecordingInput
@end

@interface DeleteRecordingInput : NSObject

/**
* Unique Recording Sid to be delete
*/
@property NSString* recordingSid;

/**
* Response type format xml or json
*/
@property NSString* responseType;

@end
#endif