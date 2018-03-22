//
//  GroupCallInput.h
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_GROUPCALLINPUT
#define APIMATIC_GROUPCALLINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"

#import "AudioFormatEnum.h"
#import "AudioFormatEnumHelper.h"
#import "HttpActionEnum.h"
#import "HttpActionEnumHelper.h"


//protocol defined for deserialization of JSON
@protocol GroupCallInput
@end

@interface GroupCallInput : NSObject

/**
* This number to display on Caller ID as calling
*/
@property NSString* from;

/**
* Please enter multiple E164 number. You can add max 10 numbers. Add numbers separated with comma. e.g : 1111111111,2222222222
*/
@property NSString* to;

/**
* URL requested once the call connects
*/
@property NSString* url;

/**
* TODO: Write general description for this field
*/
@property NSString* responseType;

/**
* Define the DTMF that the called party should send to bridge the call. Allowed Values : 0-9, #, *
*/
@property NSString* groupConfirmKey;

/**
* Specify the audio file you want to play when the called party picks up the call
*/
@property enum AudioFormatEnum groupConfirmFile;

/**
* Specifies the HTTP method used to request the required URL once call connects.
*/
@property enum HttpActionEnum method;

/**
* URL that can be requested to receive notification when call has ended. A set of default parameters will be sent here once the call is finished.
*/
@property NSString* statusCallBackUrl;

/**
* Specifies the HTTP methodlinkclass used to request StatusCallbackUrl.
*/
@property enum HttpActionEnum statusCallBackMethod;

/**
* URL requested if the initial Url parameter fails or encounters an error
*/
@property NSString* fallBackUrl;

/**
* Specifies the HTTP method used to request the required FallbackUrl once call connects.
*/
@property enum HttpActionEnum fallBackMethod;

/**
* URL that can be requested every 60 seconds during the call to notify of elapsed time and pass other general information.
*/
@property NSString* heartBeatUrl;

/**
* Specifies the HTTP method used to request HeartbeatUrl.
*/
@property enum HttpActionEnum heartBeatMethod;

/**
* Time (in seconds) we should wait while the call is ringing before canceling the call
*/
@property NSNumber* timeout;

/**
* DTMF Digits to play to the call once it connects. 0-9, #, or *
*/
@property NSString* playDtmf;

/**
* Specifies if the caller id will be hidden
*/
@property NSString* hideCallerId;

/**
* Specifies if the call should be recorded
*/
@property NSNumber* record;

/**
* Recording parameters will be sent here upon completion
*/
@property NSString* recordCallBackUrl;

/**
* Method used to request the RecordCallback URL.
*/
@property enum HttpActionEnum recordCallBackMethod;

/**
* Specifies if the call recording should be transcribed
*/
@property NSNumber* transcribe;

/**
* Transcription parameters will be sent here upon completion
*/
@property NSString* transcribeCallBackUrl;

@end
#endif