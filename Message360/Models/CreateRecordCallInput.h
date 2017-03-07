//
//  CreateRecordCallInput.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_CREATERECORDCALLINPUT
#define APIMATIC_CREATERECORDCALLINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"

#import "Direction.h"
#import "DirectionHelper.h"
#import "AudioFormat.h"
#import "AudioFormatHelper.h"


//protocol defined for deserialization of JSON
@protocol CreateRecordCallInput
@end

@interface CreateRecordCallInput : NSObject

/**
* The unique identifier of each call resource
*/
@property NSString* callSid;

/**
* Set true to initiate recording or false to terminate recording
*/
@property BOOL record;

/**
* The leg of the call to record
*/
@property enum Direction direction;

/**
* Time in seconds the recording duration should not exceed
*/
@property NSNumber* timeLimit;

/**
* URL consulted after the recording completes
*/
@property NSString* callBackUrl;

/**
* Format of the recording file. Can be .mp3 or .wav
*/
@property enum AudioFormat fileformat;

/**
* Response format, xml or json
*/
@property NSString* responseType;

@end
#endif