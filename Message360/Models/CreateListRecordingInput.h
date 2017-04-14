//
//  CreateListRecordingInput.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_CREATELISTRECORDINGINPUT
#define APIMATIC_CREATELISTRECORDINGINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol CreateListRecordingInput
@end

@interface CreateListRecordingInput : NSObject

/**
* Which page of the overall response will be returned. Zero indexed
*/
@property NSNumber* page;

/**
* Number of individual resources listed in the response per page
*/
@property NSNumber* pageSize;

/**
* TODO: Write general description for this field
*/
@property NSString* dateCreated;

/**
* TODO: Write general description for this field
*/
@property NSString* callSid;

/**
* Response type format xml or json
*/
@property NSString* responseType;

@end
#endif