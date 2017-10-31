//
//  ListTranscriptionInput.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
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
* page number
*/
@property int page;

/**
* Amount of data per page
*/
@property int pageSize;

/**
* Transcription status
*/
@property enum StatusEnum status;

/**
* Transcription date
*/
@property NSString* dateTranscribed;

@end
#endif