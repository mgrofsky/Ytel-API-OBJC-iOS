//
//  ViewRecordingInput.h
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_VIEWRECORDINGINPUT
#define APIMATIC_VIEWRECORDINGINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol ViewRecordingInput
@end

@interface ViewRecordingInput : NSObject

/**
* The unique identifier for the recording.
*/
@property NSString* recordingsid;

/**
* Response type format xml or json
*/
@property NSString* responseType;

@end
#endif