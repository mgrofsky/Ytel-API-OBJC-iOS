//
//  RecordCallInput.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_RECORDCALLINPUT
#define APIMATIC_RECORDCALLINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"

#import "DirectionEnum.h"
#import "DirectionEnumHelper.h"
#import "AudioFormatEnum.h"
#import "AudioFormatEnumHelper.h"


//protocol defined for deserialization of JSON
@protocol RecordCallInput
@end

@interface RecordCallInput : NSObject

/**
* The unique identifier of each call resource
*/
@property NSString* callSid;

/**
* Set true to initiate recording or false to terminate recording
*/
@property BOOL record;

/**
* Response format, xml or json
*/
@property NSString* responseType;

/**
* The leg of the call to record
*/
@property enum DirectionEnum direction;

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
@property enum AudioFormatEnum fileformat;

@end
#endif