//
//  DeleteRecordingInput.h
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
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
* The unique identifier for a recording.
*/
@property NSString* recordingsid;

/**
* Response type format xml or json
*/
@property NSString* responseType;

@end
#endif