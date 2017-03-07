//
//  CreateListTranscriptionInput.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_CREATELISTTRANSCRIPTIONINPUT
#define APIMATIC_CREATELISTTRANSCRIPTIONINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"

#import "Status.h"
#import "StatusHelper.h"


//protocol defined for deserialization of JSON
@protocol CreateListTranscriptionInput
@end

@interface CreateListTranscriptionInput : NSObject

/**
* TODO: Write general description for this field
*/
@property NSNumber* page;

/**
* TODO: Write general description for this field
*/
@property NSNumber* pageSize;

/**
* TODO: Write general description for this field
*/
@property enum Status status;

/**
* TODO: Write general description for this field
*/
@property NSString* dateTranscribed;

/**
* Response type format xml or json
*/
@property NSString* responseType;

@end
#endif