//
//  ListTranscriptionInput.h
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_LISTTRANSCRIPTIONINPUT
#define APIMATIC_LISTTRANSCRIPTIONINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"

#import "StatusEnum.h"
#import "StatusEnumHelper.h"


//protocol defined for deserialization of JSON
@protocol ListTranscriptionInput
@end

@interface ListTranscriptionInput : NSObject

/**
* Response type format xml or json
*/
@property NSString* responseType;

/**
* The page count to retrieve from the total results in the collection. Page indexing starts at 1.
*/
@property int page;

/**
* The count of objects to return per page.
*/
@property int pagesize;

/**
* The state of the transcription.
*/
@property enum StatusEnum status;

/**
* The date the transcription took place.
*/
@property NSString* dateTranscribed;

@end
#endif