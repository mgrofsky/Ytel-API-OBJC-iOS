//
//  CreateSendRinglessVMInput.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_CREATESENDRINGLESSVMINPUT
#define APIMATIC_CREATESENDRINGLESSVMINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol CreateSendRinglessVMInput
@end

@interface CreateSendRinglessVMInput : NSObject

/**
* From country code
*/
@property NSString* fromCountryCode;

/**
* This number to display on Caller ID as calling
*/
@property NSString* from;

/**
* To country code
*/
@property NSString* toCountryCode;

/**
* To number
*/
@property NSString* to;

/**
* URL to an audio file
*/
@property NSString* voiceMailURL;

/**
* Not currently used in this version
*/
@property NSString* method;

/**
* Response type format xml or json
*/
@property NSString* responseType;

/**
* URL to post the status of the Ringless request
*/
@property NSString* statusCallBackUrl;

/**
* POST or GET
*/
@property NSString* statsCallBackMethod;

@end
#endif